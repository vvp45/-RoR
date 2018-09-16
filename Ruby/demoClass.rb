class Customers
    @@id_of_customer = 0; # class level variable.
    def display
       puts "Hello"
    end
end

 customer_obj = Customers.new    
    customer_obj.display