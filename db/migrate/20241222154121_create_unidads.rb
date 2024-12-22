class CreateUnidads < ActiveRecord::Migration[8.0]
  def change
    create_table :unidads do |t|
      t.string :nombre_unidad

      t.timestamps
    end
  end
end
