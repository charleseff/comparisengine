class AddJobComparerIdToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :job_comparer_id, :integer
  end
end
