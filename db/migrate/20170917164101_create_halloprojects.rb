class CreateHalloprojects < ActiveRecord::Migration
  def change
    create_table :halloprojects do |t|
      t.text :hallo_text

      t.timestamps null: false
    end
  end
end
