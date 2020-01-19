class CreateLeads < ActiveRecord::Migration[6.0]
  def change
    create_table :leads do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.string :company
      t.string :location
      t.string :status
      t.text :description


      t.timestamps
    end
  end
end
