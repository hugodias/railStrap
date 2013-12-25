class User < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "http://placehold.it/450"

  before_create :set_username
  # Remove dots and spaces from username
  before_save :format_username

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :token_authenticatable, :lockable

  private
    def set_username
      self.username = self.email[/^[^@]+/].gsub(".","")
    end

    def format_username
      self.username = self.username.gsub(".","").gsub(/\s+/,"") unless self.username.nil?
    end
end
