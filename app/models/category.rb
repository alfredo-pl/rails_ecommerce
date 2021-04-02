class Category < ApplicationRecord
  has_and_belongs_to_many :products
  validates :name, presence: true, uniqueness: true
  belongs_to :category
  def sub_categories
    Category.all.where(category_id: self.id).pluck :name
  end
  
  def self.list_categories
    list = {}
    
    Category.all.each do |d|
      if d.sub_categories
          list[ d.name] = d.sub_categories
      end
    end
    list
  end
end
