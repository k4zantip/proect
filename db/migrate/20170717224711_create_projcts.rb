class CreateProjcts < ActiveRecord::Migration
  def change
    create_table :projcts do |t|
      t.string :name
      t.string :summary
      t.date :startdate
      t.date :enddate

      t.timestamps null: false
    end
  end
end
