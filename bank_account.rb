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
    private 

    def pin
      @pin = 1234
    end

    private
    def pin_error
      "Access denied: incorrect PIN."
    end

end
  