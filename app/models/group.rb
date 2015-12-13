class Group < ActiveRecord::Base
  validates :title, presence: {message: '此欄位不可為空白！'}

  has_many :posts

end
