class Account
    attr_reader :name, :balance
    def initialize(name, balance=100)
      @name = name
      @balance = balance
    end
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
  