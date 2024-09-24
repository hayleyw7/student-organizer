# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_09_24_003434) do
  create_table "assignment_repos", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "assignment_id", null: false
    t.string "repo_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assignment_id"], name: "index_assignment_repos_on_assignment_id"
    t.index ["student_id"], name: "index_assignment_repos_on_student_id"
  end

  create_table "assignments", force: :cascade do |t|
    t.string "name"
    t.date "due_date"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "slack_link"
    t.string "github_profile"
    t.string "replit_profile"
    t.string "cohort"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "assignment_repos", "assignments"
  add_foreign_key "assignment_repos", "students"
end
