class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :url_image
      t.string :status
      t.string :description

      t.timestamps
    end
  end
end
