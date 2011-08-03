class CreateJobComparers < ActiveRecord::Migration
  def self.up
    create_table :job_comparers do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :job_comparers
  end
end
