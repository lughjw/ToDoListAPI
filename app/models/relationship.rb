class Relationship < ApplicationRecord
  belongs_to :parent, class_name: "Task"
  belongs_to :child, class_name: "Task"

  validates_uniqueness_of :parent_id, scope: :child_id
end
