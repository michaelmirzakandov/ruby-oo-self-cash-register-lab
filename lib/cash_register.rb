
require 'pry'
class CashRegister

    attr_accessor :total, :discount, :items, :last_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount.to_f
        @items = []
    end

   def add_item(title, price, quantity = 1)
        @last_transaction = price * quantity
        @total += @last_transaction
        counter = 0
        while counter < quantity
            @items << title
            counter +=1
        end
   end

   def apply_discount
        x = @discount/100
        @total = @total - @total * x
        if @discount > 0
            return "After the discount, the total comes to $#{@total.round}."
        else 
            return "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        @total -= @last_transaction
    end
end