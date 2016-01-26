# == Schema Information
#
# Table name: contacts
#
#  id         :integer          not null, primary key
#  name       :text             not null
#  email      :text             not null
#  user_id    :integer          not null
#  created_at :datetime
#  updated_at :datetime
#

class Contact < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true, :uniqueness => {:scope => :name}

  belongs_to :user,
    class_name: 'User',
    foreign_key: :user_id,
    primary_key: :id

  has_many :contact_shares,
    class_name: 'ContactShare',
    foreign_key: :contact_id,
    primary_key: :id

  has_many :shared_users,
    through: :contact_shares,
    source: :user

  has_many :comments, as: :commentable

end
