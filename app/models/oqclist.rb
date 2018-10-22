class Oqclist < ApplicationRecord
    belongs_to :product
    belongs_to :customer
    has_many :oqcitems
    delegate :model, :to => :product, :prefix => true, :allow_nil => true
    delegate :partno, :to => :product, :prefix => true, :allow_nil => true
    delegate :name, :to => :customer, :prefix => true, :allow_nil => true
end
