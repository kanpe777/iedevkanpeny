# encoding: utf-8
class Pokedb < ActiveRecord::Base
  has_many :structures
  before_destroy :ensure_not_referenced_by_any_structures

  private
    #このポケモンを参照しているパーティがないことを確認
    def ensure_not_referenced_by_any_structures
      if structures.empty?
       return true
      else
        errors.add(:base, 'このポケモンは使われています')
        return false
      end
    end
end 
