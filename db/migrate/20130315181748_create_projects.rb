class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :desvription

      t.timestamps
    end
  end
end

