class CreateBautismosConversos < ActiveRecord::Migration[8.0]
  def change
    create_table :bautismos_conversos do |t|
      t.string :name
      t.string :gender
      t.integer :age
      t.integer :attendande
      t.date :bautism_date
      t.date :confirmation_date
      t.references :unidads, null: false, foreign_key: true

      t.timestamps
    end
  end
end
