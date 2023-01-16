class Type < ApplicationRecord
  has_many :field_types, dependent: :destroy
end
