class AddSharingToReleases < (ActiveRecord::VERSION::MAJOR >= 5) ? ActiveRecord::Migration[5.1]["#{ActiveRecord::VERSION::MAJOR}.#{ActiveRecord::VERSION::MINOR}"] : ActiveRecord::Migration[5.1]
  def self.up
    add_column :releases, :sharing, :string, :default => 'none', :null => false
    add_index :releases, :sharing
  end

  def self.down
    remove_column :releases, :sharing
  end
end
