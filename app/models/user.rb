class User < ActiveRecord::Base
  after_destroy :ensure_an_admin_remains
  has_secure_password
  validates :name, presence: true, uniqueness: true
  validates :password, presence: true
  private
  def ensure_proper_type
    if User.count.zero?
      raise 'cat delete last user '
    end
  end
end
