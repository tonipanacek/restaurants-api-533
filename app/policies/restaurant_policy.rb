class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def update?
    record.user == user
    # owner of the record (restaurant) is the same as the current_user (user in pundit)
  end

  def create?
    user
  end

  def destroy?
    update?
  end
end
