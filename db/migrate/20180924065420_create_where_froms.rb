class CreateWhereFroms < ActiveRecord::Migration[5.1]
  def change
    create_table :where_froms do |t|
      t.string :name

      t.timestamps
    end
  end
end
