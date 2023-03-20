class Person
    attr_accessor :name, :age
    attr_reader :id
  
    def initialize(age, name = 'Unknown', parent_permission: true)
      @id = rand(1...10_000)
      @name = name
      @age = age
      @parent_permission = parent_permission
    end
  
    private
  
    def is_of_age?
      return @age >= 18
    end
  
    public
  
    def can_use_service?
      is_of_age? || @parent_permission
    end
  end
  