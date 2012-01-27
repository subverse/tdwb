# linkcategory

Factory.define :linkcategory do |linkcategory|
  linkcategory.name "Link Category"
  linkcategory.info "foo bar"
end

Factory.sequence :web do |n|
  "www.web-#{n}.de"
end

#link

Factory.sequence :title do |n|
  "title-#{n}"
end

Factory.define :link do |link|
  link.title  { |t| t.title = Factory.next(:title) }
  link.web    { |w| w.title = Factory.next(:web) }
  link.association :linkcategory
end

# source

Factory.define :source do |source|
  source.name "name 1"
  source.code "cd1"
  source.web  "www.web1.de"
  source.info "some info"
end

# grammar

Factory.define :grammar do |grammar|
  grammar.name "name 1"
  grammar.info "some info"
end

# category

Factory.define :category do |category|
  category.name "name 1"
  category.info "some info"
end

# voc

Factory.sequence :german do |n|
  "german-#{n}"
end

Factory.sequence :wylie do |n|
  "wylie #{n}"
end

Factory.define :voc do |voc|
  voc.german { |g| g.german = Factory.next(:german) }
  voc.wylie  { |w| w.wylie = Factory.next(:wylie) }
  voc.info "some info"
  voc.association :source
  voc.association :grammar
  voc.association :category  
end