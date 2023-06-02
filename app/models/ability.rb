class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present? ## flesh this out later
    can :read, :all
    
    return unless user.admin?
    can :manage, :all
  end
end