require 'pry'

class Company
    attr_accessor :name, :size

    def initialize(name, size)
        @name = name
        @size = size
    end
end

companies = [
    Company.new('Alpha', 30),
    Company.new('Beta', 300),
    Company.new('Delta', 3000)
]

### Your code below this

#As we were to code below the above line, the following were not made into methods due to scope. 
#puts left in for testing purposes and understanding output. 
#empty comments for readability between tests, as they would normally be methods. 

#
puts companies.map { |company| 
    "#{company.name} - #{company.size}"    
}

#
puts companies.reduce(0) { |sum, company|
    sum + company.size 
}

#
large_companies = companies.select { |company|
    company.size > 100 
}
puts large_companies.map { |company|
    company.name 
}

#
beta_company = companies.find { |company| 
    company.name === "Beta"
}
puts beta_company.name 

#
biggest_company = companies.reduce { |biggest, company|
    biggest.size > company.size ? biggest : company; 
}
puts biggest_company.name; 

#
sorted_companies = companies.sort_by { |company| 
    company.size
}
sorted_companies = sorted_companies.reverse_each
puts sorted_companies.map(&:name)