# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171103003304) do

  create_table "bills", primary_key: "bill_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "payment_type", null: false
    t.date "date", null: false
    t.bigint "customer_id"
    t.bigint "falabella_employees_id", null: false
    t.index ["customer_id"], name: "index_bills_on_customer_id"
    t.index ["falabella_employees_id"], name: "index_bills_on_falabella_employees_id"
  end

  create_table "companies", primary_key: "company_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", limit: 45, null: false
    t.string "phone_number", limit: 20, null: false
  end

  create_table "customers", primary_key: "customer_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "first_name", limit: 25, null: false
    t.string "last_name", limit: 25, null: false
    t.string "email", limit: 45, null: false
    t.string "address", limit: 45, null: false
    t.integer "customer_type", null: false
  end

  create_table "departments", primary_key: "department_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", limit: 45, null: false
    t.bigint "floor_id"
    t.index ["floor_id"], name: "index_departments_on_floor_id"
  end

  create_table "details", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "quantity", null: false
    t.bigint "product_id", null: false
    t.index ["product_id"], name: "index_details_on_product_id"
  end

  create_table "external_employee_shifts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date "date", null: false
    t.bigint "falabella_employee_id"
    t.bigint "shift_id"
    t.index ["falabella_employee_id"], name: "index_external_employee_shifts_on_falabella_employee_id"
    t.index ["shift_id"], name: "index_external_employee_shifts_on_shift_id"
  end

  create_table "external_employees", primary_key: "external_employee_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "first_name", limit: 45, null: false
    t.string "last_name", limit: 45, null: false
    t.string "phone_number", limit: 20, null: false
    t.string "address", limit: 45, null: false
    t.string "email", limit: 45, null: false
    t.integer "salary", null: false
    t.bigint "company_id"
    t.bigint "section_id"
    t.bigint "shift_id"
    t.index ["company_id"], name: "index_external_employees_on_company_id"
    t.index ["section_id"], name: "index_external_employees_on_section_id"
    t.index ["shift_id"], name: "index_external_employees_on_shift_id"
  end

  create_table "falabella_employee_shifts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date "date", null: false
    t.bigint "falabella_employee_id"
    t.bigint "shift_id"
    t.index ["falabella_employee_id"], name: "index_falabella_employee_shifts_on_falabella_employee_id"
    t.index ["shift_id"], name: "index_falabella_employee_shifts_on_shift_id"
  end

  create_table "falabella_employees", primary_key: "falabella_employee_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "first_name", limit: 45, null: false
    t.string "last_name", limit: 45, null: false
    t.string "phone_number", limit: 20, null: false
    t.string "address", limit: 45, null: false
    t.string "email", limit: 45, null: false
    t.integer "salary", null: false
    t.integer "type", null: false
    t.bigint "floor_id"
    t.bigint "section_id"
    t.bigint "shift_id"
    t.index ["floor_id"], name: "index_falabella_employees_on_floor_id"
    t.index ["section_id"], name: "index_falabella_employees_on_section_id"
    t.index ["shift_id"], name: "index_falabella_employees_on_shift_id"
  end

  create_table "floors", primary_key: "floor_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
  end

  create_table "products", primary_key: "product_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "value", null: false
  end

  create_table "sections", primary_key: "section_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", limit: 45, null: false
    t.bigint "department_id"
    t.bigint "floor_id"
    t.index ["department_id"], name: "index_sections_on_department_id"
    t.index ["floor_id"], name: "index_sections_on_floor_id"
  end

  create_table "shifts", primary_key: "shift_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date "entry_time"
    t.date "departure_time"
  end

end
