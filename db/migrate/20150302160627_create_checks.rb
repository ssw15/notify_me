class CreateChecks < ActiveRecord::Migration
  def change
    create_table :checks do |t|
      t.references :target, index: true
      t.text :content

      t.timestamps null: false
    end
    add_foreign_key :checks, :targets
  end
end
