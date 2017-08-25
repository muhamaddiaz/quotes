class Quote < ApplicationRecord
  before_save {self.name.capitalize!}
  validates :name, presence: true
  validates :quote, presence: true
end
