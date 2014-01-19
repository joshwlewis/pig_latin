class CreateTranslations < ActiveRecord::Migration
  def change
    create_table :translations do |t|
      t.string :english,    null: false
      t.string :pig_latin,  null: false
      t.timestamps
    end
  end
end
