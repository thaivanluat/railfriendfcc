class Friend < ApplicationRecord
  validates :first_name, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  belongs_to :user
end
