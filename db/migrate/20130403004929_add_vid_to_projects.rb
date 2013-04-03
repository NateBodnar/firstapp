class AddVidToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :vid, :string
  end
end
