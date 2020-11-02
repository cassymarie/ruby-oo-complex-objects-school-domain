# code here!
# require 'pry'

class School
    attr_accessor :school_name, :name, :roster, :student, :grade
    

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
        # add_classes
    end
    def add_student(student, grade)
        add_classroom(grade)
        student.class == Array ? student.each {|name| @roster[grade].push(name)} : @roster[grade].push(student)
    end
    def add_classroom(grade)
       unless @roster.include?(grade)
        @roster[grade] = []
       end 
    end
    def grade(num)
        @roster[num]
    end
   def sort
        @roster.each{|grade, list| list.sort!}.sort_by{|k,v| k}.to_h
   end

    
end

# Mary = School.new("St. Mary's")
# Mary.add_student("Frank", 10)

# # binding pry 

# Mary.school_name

# def add(person, grade)
#     puts "#{name = person.class}"
#     if person.class == String
#         puts "Im a String"
#     elsif person.class == Array
#         puts "I am an Array"
#     else
#         puts "I am an Error"
#     end
# end