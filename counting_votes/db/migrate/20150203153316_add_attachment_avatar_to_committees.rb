class AddAttachmentAvatarToCommittees < ActiveRecord::Migration
  def self.up
    change_table :committees do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :committees, :avatar
  end
end
