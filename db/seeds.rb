10.times do |blog|
  Blog.create!(
    title: "My blog post #{blog}",
    body:  "fjvwhjfwefwebkwebfhjewfjwefhwebfkbwekfbwkebfkwfkwbfkwefkbwekfhbwehfbwehfw"
  )
end


puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts "5 skills  created"

9.times do |portfolio_item|
  Portfolio.create!(
    title: "portfolio title: #{portfolio_item}",
    subtitle:  "My great Service",
    body: "hello my name is chetan, im learning Ruby on Rails",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/300x200"
  )
end  

puts "9 Portfolio items created"