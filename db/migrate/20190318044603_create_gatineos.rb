class CreateGatineos < ActiveRecord::Migration[5.2]
  def change
    create_table :gatineos do |t|
      t.string :Name
      t.string :Cor
      t.string :Tutor
      t.string :Raça

      t.timestamps
    end
  end
end
