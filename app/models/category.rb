class Category < ApplicationRecord
  has_and_belongs_to_many :products
  has_many :child_categories, class_name: "Category", foreign_key: "category_id"
  belongs_to :parent_category, class_name: "Category", optional: true, foreign_key: 'category_id'
  validates :name, presence: true, uniqueness: true

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
