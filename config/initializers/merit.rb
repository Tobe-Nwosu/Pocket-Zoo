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
    name: 'Just Registered',
    custom_fields: {
      category: 'animal_category',
      icon_name: 'baby',
      color: '348, 25%, 61%',
      background_color: '348, 25%, 61%, 0.2'
    },
    description: 'You have registered on PocketZoo!',
  }, {
    id: 2,
    name: 'Junior Explorer',
    custom_fields: {
      category: 'animal_category',
      icon_name: 'magnifying-glass',
      color: '53, 93%, 37%',
      background_color: '53, 93%, 37%, 0.2'
    },
    description: 'You have found 10 animals!'
  }, {
    id: 3,
    name: 'Explorer',
    custom_fields: {
      category: 'animal_category',
      icon_name: 'magnifying-glass',
      color: '0, 0%, 75%',
      background_color: '0, 0%, 75%, 0.2'
    },
    description: 'You have found 50 animals!'
  }, {
    id: 4,
    name: 'Senior Explorer',
    custom_fields: {
      category: 'animal_category',
      icon_name: 'magnifying-glass',
      color: '51, 100%, 50%',
      background_color: '51, 100%, 50%, 0.2'
    },
    description: 'You have found 100 animals!'
  }, {
    id: 5,
    name: 'Mammal Master',
    custom_fields: {
      category: 'animal_category',
      icon_name: 'otter',
      color: '203, 39%, 44%',
      background_color: '203, 39%, 44%, 0.2'
    },
    description: 'You have found the first mammal!'
  }, {
    id: 6,
    name: 'Reptile Ruler',
    custom_fields: {
      category: 'animal_category',
      icon_name: 'worm',
      color: '346, 84%, 61%',
      background_color: '346, 84%, 61%, 0.2'
    },
    description: 'You have found the first reptile!'
  }, {
    id: 7,
    name: 'Bird Baron',
    custom_fields: {
      category: 'animal_category',
      icon_name: 'feather',
      color: '165, 19%, 40%',
      background_color: '165, 19%, 40%, 0.2'
    },
    description: 'You have found the first bird!'
  }, {
    id: 8,
    name: 'Insect Inspector',
    custom_fields: {
      category: 'animal_category',
      icon_name: 'spider',
      color: '182, 43%, 76%',
      background_color: '182, 43%, 76%, 0.2'
    },
    description: 'You have found the first insect!'
  }, {
    id: 9,
    name: 'Serial killer',
    custom_fields: {
      category: 'animal_category',
      icon_name: 'skull',
      color: '76, 37%, 61%',
      background_color: '76, 37%, 61%, 0.2'
    },
    description: 'You have deleted 3 animals you found!'
  }, {
    id: 10,
    name: 'Darwin',
    custom_fields: {
      category: 'animal_category',
      icon_name: 'dna',
      color: '233, 100%, 86%',
      background_color: '233, 100%, 86%, 0.2'
    },
    description: 'You have collected 42 animals of each species!'
  }].each do |attrs|
    Merit::Badge.create! attrs
  end
end
