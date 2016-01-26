# == Schema Information
#
# Table name: comments
#
#  id               :integer          not null, primary key
#  title            :string           not null
#  body             :text             not null
#  commentable_id   :integer          not null
#  commentable_type :string           not null
#  created_at       :datetime
#  updated_at       :datetime
#

class Comment < ActiveRecord::Base
  validates :title, :body, presence: true

  belongs_to :commentable, polymorphic: true
  
end
