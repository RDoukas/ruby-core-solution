class Employee
  attr_accessor :first_name, :last_name, :salary, :active, :email

  def initialize(input_options)
    @first_name = input_options[:first_name]
    if input_options[:first_name] == nil
      @first_name = "Jane"
    end 
    @last_name = input_options[:last_name]
    if input_options[:last_name] == nil
      @last_name = "Doe"
    end 
    @salary = input_options[:salary]
    if input_options[:salary] == nil
      @salary = 100000
    end 
    @active = input_options[:active]
    if input_options[:active] == nil
      @active = true
    end 
    @email = input_options[:email]
    if input_options[:email] == nil
      @email = "#{first_name}#{last_name}@gmail.com"
    end 
  end

  def full_name 
    @full_name = "#{@first_name} #{@last_name}"
    if @full_name[-1] == "s"
      @full_name ="#{@full_name} Esquire"
    end 
    @full_name

  end 

    

  def print_info
    puts "#{full_name} makes #{salary} a year and their email address is #{@email}."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end
end

employee1 = Employee.new({last_name: "Carter", salary: 80000, active: true})
employee2 = Employee.new({last_name: "Jones", email: "rdoukas@yahoo.com"})

puts employee2.print_info
puts employee1.print_info
