# Be sure to restart your server when you modify this file.
#
# +grant_on+ accepts:
# * Nothing (always grants)
# * A block which evaluates to boolean (recieves the object as parameter)
# * A block with a hash composed of methods to run on the target object with
#   expected values (+votes: 5+ for instance).
#
# +grant_on+ can have a +:to+ method name, which called over the target object
# should retrieve the object to badge (could be +:user+, +:self+, +:follower+,
# etc). If it's not defined merit will apply the badge to the user who
# triggered the action (:action_user by default). If it's :action_user, it badges
# the created object (new user for instance).
#
# The :temporary option indicates that if the condition doesn't hold but the
# badge is granted, then it's removed. It's false by default (badges are kept
# forever).

module Merit
  class BadgeRules
    include Merit::BadgeRulesMethods

    def initialize
      # If it creates user, grant badge
      # Should be "current_user" after registration for badge to be granted.
      # Find badge by badge_id, badge_id takes presidence over badge
      # grant_on 'users#create', badge_id: 7, badge: 'just-registered', to: :action_user

      # If it has 10 comments, grant commenter-10 badge
      # grant_on 'comments#create', badge: 'commenter', level: 10 do |comment|
      #   comment.user.comments.count == 10
      # end

      # If it has 5 votes, grant relevant-commenter badge
      # grant_on 'comments#vote', badge: 'relevant-commenter',
      #   to: :user do |comment|
      #   comment.votes.count == 5
      # end

      # Changes his name by one wider than 4 chars (arbitrary ruby code case)
      # grant_on 'registrations#update', badge: 'autobiographer',
      #   temporary: true, model_name: 'User' do |user|
      #   user.name.length > 4
      # end

      # either users#create or registrations#create

      grant_on 'users#create', badge_id: 1, badge: 'just-registered', to: :action_user

      grant_on 'findings#create', badge_id: 2, badge: 'Junior Explorer', to: :action_user do |finding|
        finding.user.findings.count >= 10
      end

      grant_on 'findings#create', badge_id: 3, badge: 'Explorer', to: :action_user do |finding|
        finding.user.findings.count >= 50
      end

      grant_on 'findings#create', badge_id: 4, badge: 'Senior Explorer', to: :action_user do |finding|
        finding.user.findings.count >= 100
      end

      grant_on 'findings#create', badge_id: 5, badge: 'Mammal Master', to: :action_user do |finding|
        finding.animal.classification == 'mammal'
      end

      grant_on 'findings#create', badge_id: 6, badge: 'Reptile Ruler', to: :action_user do |finding|
        finding.animal.classification == 'reptile'
      end

      grant_on 'findings#create', badge_id: 7, badge: 'Bird Baron', to: :action_user do |finding|
        finding.animal.classification == 'bird'
      end

      grant_on 'findings#create', badge_id: 8, badge: 'Insect Inspector', to: :action_user do |finding|
        finding.animal.classification == 'insect'
      end

      grant_on 'findings#destroy', badge_id: 9, badge: 'Serial killer', to: :action_user do |finding|
        finding.count == 3
      end



      # User has collected 42 mammals, 42 insects, 42 birds and 42 reptiles'
      # grant_on 'findings#create', badge_id: 10, badge: 'Darwin', to: :action_user do |finding|
      #   finding.animal.classification == 'bird' && finding.animal.classification.count >= 42 &&
      #     finding.animal.classification == 'insect' && finding.animal.classification.count >= 42 &&
      #     finding.animal.classification == 'mammal' && finding.animal.classification.count >= 42 &&
      #     finding.animal.classification == 'reptile' && finding.animal.classification.count >= 42
      # end

    end
  end
end
