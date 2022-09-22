class FindingPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      user.admin? ? scope.all : scope.where(user: user).order(id: :desc)
    end
  end

  def show?
    true
  end

  def new?
    create?
  end

  def create?
    true
  end

  def update?
    user.admin? || record.user == user
  end

  def destroy?
    user.admin? || record.user == user
  end
end
