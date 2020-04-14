# frozen_string_literal: true

class Album < ApplicationRecord
  belongs_to :category
  belongs_to :artist

  has_many :songs, dependent: :destroy

  validates :title, presence: true
  validates :date, presence: true

  has_one_attached :cover, dependent: :destroy
end
