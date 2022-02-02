class AddReleaseIdToIssues < (ActiveRecord::VERSION::MAJOR >= 5) ? ActiveRecord::Migration[5.1]["#{ActiveRecord::VERSION::MAJOR}.#{ActiveRecord::VERSION::MINOR}"] : ActiveRecord::Migration[5.1]
  def self.up
    unless ActiveRecord::Base.connection.column_exists?(:issues, :release_id)
      add_column :issues, :release_id, :integer
    end
  end
  
  def self.down
    remove_column :issues, :release_id
  end
end
