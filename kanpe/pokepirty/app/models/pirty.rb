class Pirty < ActiveRecord::Base
  has_many :structures, dependent: :destroy
end
