require_relative 'person'

class Teacher
  def initialize(age, name = 'Unknown', specialization, parent_permission: true)
    super(age, name, parent_permission: true)
    @specialization = specialization
  end

  def can_use_service?
    true
  end
end