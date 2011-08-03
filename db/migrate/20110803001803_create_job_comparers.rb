class CreateJobComparers < ActiveRecord::Migration
  def change
    create_table :job_comparers do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end
end
