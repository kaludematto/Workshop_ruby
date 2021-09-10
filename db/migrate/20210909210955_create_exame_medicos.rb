class CreateExameMedicos < ActiveRecord::Migration[6.1]
  def change
    create_table :exame_medicos do |t|
      t.string :nome
      t.string :tipo
      t.boolean :status
      t.references :laboratorio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
