class Folder < ApplicationRecord
  belongs_to :user
  belongs_to :parent, class_name: 'Folder'
  has_many :children, :dependent => :destroy, class_name: 'Folder', :foreign_key => 'parent_id'
  has_many :documents, :dependent => :destroy, class_name: 'Document'
  validates :name, presence: true
end