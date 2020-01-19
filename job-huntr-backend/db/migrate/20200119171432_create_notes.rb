class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.references :lead, null: false, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
