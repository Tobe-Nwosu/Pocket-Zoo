# Use this hook to configure merit parameters
Merit.setup do |config|
  # Check rules on each request or in background
  config.checks_on_each_request = true

  # Add application observers to get notifications when reputation changes.
  # config.add_observer 'MyObserverClassName'

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
    custom_fields: {
      category: 'animal_category',
      icon_name: 'fa-baby'
    },
    description: 'You have registered on PocketZoo!',
  }, {
    id: 2,
    name: 'Junior Explorer',
    custom_fields: {
      category: 'animal_category',
      icon_name: 'magnifying-glass'
    },
    description: 'You have found 10 animals!'
  }, {
    id: 3,
    name: 'Explorer',
    custom_fields: {
      category: 'animal_category',
      icon_name: 'magnifying-glass'
    },
    description: 'You have found 50 animals!'
  }, {
    id: 4,
    name: 'Senior Explorer',
    custom_fields: {
      category: 'animal_category',
      icon_name: 'magnifying-glass'
    },
    description: 'You have found 100 animals!'
  }, {
    id: 5,
    name: 'Mammal Master',
    custom_fields: {
      category: 'animal_category',
      icon_name: 'fa-otter'
    },
    description: 'You have found the first mammal!'
  }, {
    id: 6,
    name: 'Reptile Ruler',
    custom_fields: {
      category: 'animal_category',
      icon_name: 'fa-worm'
    },
    description: 'You have found the first reptile!'
  }, {
    id: 7,
    name: 'Bird Baron',
    custom_fields: {
      category: 'animal_category',
      icon_name: 'fa-duck'
    },
    description: 'You have found the first bird!'
  }, {
    id: 8,
    name: 'Insect Inspector',
    custom_fields: {
      category: 'animal_category',
      icon_name: 'fa-worm'
    },
    description: 'You have found the first insect!'
  }, {
    id: 9,
    name: 'Serial killer',
    custom_fields: {
      category: 'animal_category',
      icon_name: 'fa-skull'
    },
    description: 'You have deleted 3 animals you found!'
  }, {
    id: 10,
    name: 'Darwin',
    custom_fields: {
      category: 'animal_category',
      icon_name: 'fa-dna'
    },
    description: 'You have collected 42 mammals, 42 insects, 42 birds and 42 reptiles!'
  }].each do |attrs|
    Merit::Badge.create! attrs
  end
end
