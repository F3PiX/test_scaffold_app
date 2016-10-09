class CreateResourceThings < ActiveRecord::Migration[5.0]
  def change
    create_table :resource_things do |t|
      t.string :name

      t.timestamps
    end
  end
end
