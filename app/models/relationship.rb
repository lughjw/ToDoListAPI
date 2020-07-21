class Relationship < ApplicationRecord
  belongs_to :parent, class_name: "Task"
  belongs_to :child, class_name: "Task"

  validates :parent_id, uniqueness: { scope: :child_id }
end
