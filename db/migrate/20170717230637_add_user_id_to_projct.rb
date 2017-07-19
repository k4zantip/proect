class AddUserIdToProjct < ActiveRecord::Migration
  def change
      change_table :projcts do |t|
          t.belongs_to :user
      end
  end
end
