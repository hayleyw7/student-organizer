class RenameStudentColumns < ActiveRecord::Migration[7.0]
  def change
    rename_column :students, :github_link, :github_profile
    rename_column :students, :replit_link, :replit_profile
    rename_column :students, :class_name, :cohort
  end
end
