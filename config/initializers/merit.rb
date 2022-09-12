# Use this hook to configure merit parameters
Merit.setup do |config|
  # Check rules on each request or in background
  config.checks_on_each_request = true

  # Add application observers to get notifications when reputation changes.
  config.add_observer 'MyObserverClassName'

  # Define :user_model_name. This model will be used to grant badge if no
  # `:to` option is given. Default is 'User'.
  config.user_model_name = 'User'

  # Define :current_user_method. Similar to previous option. It will be used
  # to retrieve :user_model_name object if no `:to` option is given. Default
  # is "current_#{user_model_name.downcase}".
  config.current_user_method = 'current_user'
end

# Create application badges (uses https://github.com/norman/ambry)
Rails.application.reloader.to_prepare do
  [{
    id: 1,
    name: 'just-registered',
    description: 'User has registered on the site'
  }, {
    id: 2,
    name: 'Junior Explorer',
    custom_fields: { category: 'animal_count' },
    description: 'User has found 10 animals'
  }, {
    id: 3,
    name: 'Explorer',
    custom_fields: { category: 'animal_count' },
    description: 'User has found 50 animals'
  }, {
    id: 4,
    name: 'Senior Explorer',
    custom_fields: { category: 'animal_count' },
    description: 'User has found 100 animals'
  }, {
    id: 5,
    name: 'Mammal Master',
    custom_fields: { category: 'animal_category' },
    description: 'User has found the first mammal'
  }, {
    id: 6,
    name: 'Reptile Ruler',
    custom_fields: { category: 'animal_category' },
    description: 'User has found the first reptile'
  }, {
    id: 7,
    name: 'Bird Baron',
    custom_fields: { category: 'animal_category' },
    description: 'User has found the first bird'
  }, {
    id: 8,
    name: 'Insect Inspector',
    custom_fields: { category: 'animal_category' },
    description: 'User has found the first insect'
  }, {
    id: 9,
    name: 'Serial killer',
    custom_fields: { category: 'animal_killer' },
    description: 'User has deleted 3 findings'
  }].each do |attrs|
    Merit::Badge.create! attrs
  end
end
