class CreateStrolls < ActiveRecord::Migration[6.0]
  def change
    create_table :strolls do |t|
      t.belongs_to :dog, index: true
      t.belongs_to :dogsitter, index: true

      t.timestamps
    end
  end
end
