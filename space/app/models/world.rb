class World < ApplicationRecord

  has_many :notes, dependent: :destroy
  validates :name, presence: true,
                    length: { minimum: 3 }

end
