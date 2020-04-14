# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :albums, dependent: :nullify

  validates :name, presence: true

  has_one_attached :image
end
