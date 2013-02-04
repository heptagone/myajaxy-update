class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to  :user
      t.string :comment1
      t.string :comment2

      t.timestamps
    end
  end
end
