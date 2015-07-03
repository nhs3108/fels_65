class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :title
      t.references :user, index: true, foreign_key: true
      t.timestamps null: false
      t.integer :type_id
      t.integer :status
    end
  end
end
