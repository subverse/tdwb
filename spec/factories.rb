# By using the symbol ':linkcategories', we get Factory Girl to simulate the User model.
Factory.define :Linkcategory do |linkcategory|
  linkcategory.name "Link Category One"
  linkcategory.info "foo bar"
end