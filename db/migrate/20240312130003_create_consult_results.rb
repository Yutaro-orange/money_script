class CreateConsultResults < ActiveRecord::Migration[7.0]
  def change
    create_table :consult_results do |t|
      t.string :name
      t.integer :inpi
      t.integer :suhai
      t.integer :chii
      t.integer :kekai

      t.timestamps
    end
  end
end
