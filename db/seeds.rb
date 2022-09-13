3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end


10.times do |blog|
  Blog.create!(
    title: "My blog post #{blog}",
    body:  "fjvwhjfwefwebkwebfhjewfjwefhwebfkbwekfbwkebfkwfkwbfkwefkbwekfhbwehfbwehfw",
    topic_id: Topic.last.id 
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

8.times do |portfolio_item|
  Portfolio.create!(
    title: "portfolio title: #{portfolio_item}",
    subtitle:  "Ruby on rails",
    body: "hello my name is chetan, im learning Ruby on Rails",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/300x200"
  )
end  


1.times do |portfolio_item|
  Portfolio.create!(
    title: "portfolio title: #{portfolio_item}",
    subtitle:  "Angular",
    body: "hello my name is chetan, im learning Ruby on Rails",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/300x200"
  )
end  

puts "9 Portfolio items created"