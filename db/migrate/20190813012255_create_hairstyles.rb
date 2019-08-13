class CreateHairstyles < ActiveRecord::Migration[5.2]
  def change
    create_table :hairstyles do |t|
     t.string :haircut
     t.string :colorig
     t.string :haircut_and_coloring
      t.timestamps
    end
  end
end
