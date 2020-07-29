class Task < ApplicationRecord
  belongs_to :user

  has_many :child_relations, class_name: "Relationship", foreign_key: "parent_id"
  has_many :children, through: :child_relations, class_name: "Task"

  has_many :parent_relations, class_name: "Relationship", foreign_key: "child_id"
  has_many :parents, through: :parent_relations, class_name: "Task"

  def related_to?(task)
    if self == task
      return "is self"
    end

    if self.children.include?(task)
      return "is parent of"
    end

    if self.parents.include?(task)
      return "is child of"
    end

    false
  end
end