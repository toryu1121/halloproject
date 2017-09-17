class CreateHallojs < ActiveRecord::Migration
  def change
    create_table :hallojs do |t|
      t.text :hallo_text

      t.timestamps null: false
    end
  end
end
