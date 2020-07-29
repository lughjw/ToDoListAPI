class Relationship < ApplicationRecord
  belongs_to :parent, class_name: "Task"
  belongs_to :child, class_name: "Task"

  validate :are_not_related, on: :create

  def are_not_related
    if parent.related_to?(child)
      errors.add(:parent_id, "nodes are already related")
    end
  end

end
