class Event < ApplicationRecord
    before_validation :set_default_price
    before_validation :set_default_participants

    validates :title, presence: true, uniqueness: true
    validates :description, presence: true, length: { minimum: 100 }
    validates :price, presence: true
    validates :participants, presence: true, numericality: {less_than: 21}
  
    
    private

    def set_default_price
        self.price ||=0
    end

    def set_default_participants
        self.participants ||=0
    end

end
