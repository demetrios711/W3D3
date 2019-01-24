
require 'securerandom'

# == Schema Information
#
# Table name: shortened_urls
#
#  id         :bigint(8)        not null, primary key
#  short_url  :string
#  long_url   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#


class ShortenedURL < ApplicationRecord
  validates :long_url, presence:true

  def self.random_code
    short_url = SecureRandom.urlsafe_base64(16)
  end
end
