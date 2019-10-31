class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :topic
      t.text :content
      t.string :priority
      t.string :status
      t.datetime :start_from
      t.datetime :end_at
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
