class PortfoliosController < ApplicationController
  layout "portfolio"
  def index
    @portfolio_item = Portfolio.all
  end  

  def angular
    @angular_portfolio_item = Portfolio.angular
  end

  def new
    @portfolio_item = Portfolio.new
    3.times { @portfolio_item.technologies.build }  
  end  

  def create
    @portfolio_item = Portfolio.new(portfolio_prams)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to @portfolio_item, notice: "Portfolio was successfully created and is live now" }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @portfolio_item = Portfolio.find(params[:id])
    3.times { @portfolio_item.technologies.build }
  end  

  def update
    @portfolio_item = Portfolio.find(params[:id])
    respond_to do |format|
      if @portfolio_item.update(portfolio_prams)
        format.html { redirect_to portfolios_path, notice: "Portfolio was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end
  

  def destroy
    @portfolio_item = Portfolio.find(params[:id])
    @portfolio_item.destroy

    respond_to do |format|
      format.html { redirect_to portfolios_path, notice: "Prtfolio was successfully destroyed." }
    end
  end

  def show
    @portfolio_item = Portfolio.find(params[:id])
  end  


  def portfolio_prams
    params.require(:portfolio).permit(:title,
                                      :subtitle,
                                      :body,
                                      technologies_attributes: [:name]
                                      )
  end  

end
