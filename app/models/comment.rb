class Comment < ApplicationRecord
  include Visible

  belongs_to :article

  after_destroy :log_destroy_action

  def log_destroy_action
    puts 'Comment destroyed'
  end
end

# articles's comment should be destroyed if the article is destroyed.
