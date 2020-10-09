class Account
    attr_reader :name, :balance
    def initialize(name, balance=100)
      @name = name
      @balance = balance
    end

    public
    def withdraw(pin_number, amount)
        if self.pin == pin_number
            @balance -= amount
            puts "Withdrew #{amount}. New balance: $#{@balance}"
        else
            puts self.pin_error
        end
    end

    public
    def display_balance(pin_number)
        puts self.pin == pin_number ? "Balance: $#{@balance}." : self.pin_error
    end

    def pin
      @pin = 1234
    end

    def pin_error
      "Access denied: incorrect PIN."
    end

end
  
#test account
test_account = Account.new('Jose', 1000)

pp test_account

#testing methods
test_account.withdraw(12332, 500)