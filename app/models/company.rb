class Company < ActiveRecord::Base
has_many :launches, dependent: :destroy

end





