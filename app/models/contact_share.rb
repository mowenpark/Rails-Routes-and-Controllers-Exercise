# == Schema Information
#
# Table name: contact_shares
#
#  id         :integer          not null, primary key
#  contact_id :integer          not null
#  user_id    :integer          not null
#  created_at :datetime
#  updated_at :datetime
#

class ContactShare < ActiveRecord::Base

  belongs_to :user,
    class_name: 'User',
    foreign_key: :user_id,
    primary_key: :id

  belongs_to :contact,
    class_name: 'Contact',
    foreign_key: :contact_id,
    primary_key: :id

  has_many :comments, as: :commentable


end
