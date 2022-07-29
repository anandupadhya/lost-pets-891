class Pet < ApplicationRecord
  validates :name, presence: true
  validates :species, presence: true
  validates :species, inclusion: {
    in: %w[dog cat rabbit snake hamster],
    message: "doesn't look right..."
  }
end

    # message: ->(object, data) do
    #     "Hey #{object.name}, #{data[:value]} erm"
    #   end
