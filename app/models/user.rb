# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  username   :text             not null
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
  validates :username, presence: true

  has_many :contact_shares,
    class_name: 'ContactShare',
    foreign_key: :user_id,
    primary_key: :id

  has_many :shared_contacts,
    through: :contact_shares,
    source: :contact

  has_many :comments, as: :commentable

end
