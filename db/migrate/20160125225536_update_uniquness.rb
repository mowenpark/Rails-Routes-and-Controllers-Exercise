class UpdateUniquness < ActiveRecord::Migration
  def change
    add_index :contacts, :email, unique: true
  end
end
