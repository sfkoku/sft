class Category < ApplicationRecord
  has_many :books

  def self.all_ary
    ary = [] 
    self.all.each do |a|
      sub_ary = [a.name,a.id]
      ary.push(sub_ary)
    end
    ary
  end
end
