# frozen_string_literal: true

class Restaurant < ApplicationRecord
  CUISINE = %w[chinese italian japanese french belgian].freeze
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: CUISINE }
  has_many :reviews, dependent: :destroy
end
