# frozen_string_literal: true

class Artist < ApplicationRecord
  has_many :albums, dependent: :destroy

  validates :name, presence: true

  has_one_attached :photo, dependent: :destroy
end
