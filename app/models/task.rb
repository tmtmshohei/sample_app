class Task < ApplicationRecord
  default_scope -> { order(priority: :desc) }
end
