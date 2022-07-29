class Pet < ApplicationRecord
  has_many :comments, dependent: :destroy

  SPECIES = %w[dog cat rabbit snake hamster bear]

  validates :name, presence: true
  validates :species, presence: true
  validates :species, inclusion: {
    in: SPECIES,
    message: "doesn't look right..."
  }
end

    # message: ->(object, data) do
    #     "Hey #{object.name}, #{data[:value]} erm"
    #   end
