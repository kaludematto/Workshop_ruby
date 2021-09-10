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

ActiveRecord::Schema.define(version: 2021_09_09_210955) do

  create_table "exame_medicos", force: :cascade do |t|
    t.string "nome"
    t.string "tipo"
    t.boolean "status"
    t.integer "laboratorio_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["laboratorio_id"], name: "index_exame_medicos_on_laboratorio_id"
  end

  create_table "laboratorios", force: :cascade do |t|
    t.string "nome"
    t.string "endereco"
    t.boolean "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "exame_medicos", "laboratorios"
end
