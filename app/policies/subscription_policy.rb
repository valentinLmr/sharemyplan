class SubscriptionPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # scope.all
      scope.where(user: user)
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

  def destroy?
    record.user == user
  end

  def edit?
    update?
  end

  def update?
    record.user == user
  end

  def dashboard?
    true
  end
end
