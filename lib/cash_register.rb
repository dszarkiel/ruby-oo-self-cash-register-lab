require 'pry'
class CashRegister

attr_accessor :discount, :total, :items, :last_item

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
        @last_item = 0
    end

    def add_item(title, price, quantity=1)
        @total += price * quantity

        quantity.times do 
            self.items << title
        end
        self.last_item = (price * quantity)
    end

    def apply_discount 
        if discount == 0
            "There is no discount to apply."
            else
                @total -= @total * @discount/100
                "After the discount, the total comes to $#{@total}."
        end
    end

    def void_last_transaction
        @total = self.total - self.last_item
    end
end
