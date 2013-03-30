class AddImageRemoteUrlToProjects < ActiveRecord::Migration

  def self.up
    add_column :projects, :image_remote_url, :string
  end

  def self.down
    remove_column :projects, :image_remote_url
  end
end
