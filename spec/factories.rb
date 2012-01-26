Factory.define :linkcategory do |linkcategory|
  linkcategory.name "Link Category"
  linkcategory.info "foo bar"
end

Factory.sequence :title do |n|
  "title-#{n}"
end

Factory.sequence :web do |n|
  "www.title-#{n}.de"
end

Factory.define :link do |link|
  link.title  { |t| t.title = Factory.next(:title) }
  link.web    { |w| w.title = Factory.next(:web) }
  link.association :linkcategory
end