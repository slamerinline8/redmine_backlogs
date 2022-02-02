class AddIssuesRbcache < (ActiveRecord::VERSION::MAJOR >= 5) ? ActiveRecord::Migration[5.1]["#{ActiveRecord::VERSION::MAJOR}.#{ActiveRecord::VERSION::MINOR}"] : ActiveRecord::Migration[5.1]
  def self.up
    create_table :rb_release_burndown_caches do |t|
      t.column :issue_id, :integer, :null => false
      t.column :value, :text
    end
    add_index :rb_release_burndown_caches, :issue_id
  end

  def self.down
    drop_table :rb_release_burndown_caches
  end
end
