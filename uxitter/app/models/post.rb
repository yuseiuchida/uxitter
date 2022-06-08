class Post < ApplicationRecord
  validates :before, :after, presence: true
  validates :before, :after, length: { maximum: 250 }

  def self.exchange(post_params)
    exchange_params = post_params
    text = post_params[:before]
    after_text = text.gsub(/します/, "するます")
    exchange_params[:after] = after_text
    return exchange_params
  end
end
