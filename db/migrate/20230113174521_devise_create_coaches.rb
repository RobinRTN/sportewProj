# frozen_string_literal: true

class DeviseCreateCoaches < ActiveRecord::Migration[7.0]
  def change
    create_table :coaches do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      t.string :first_name
      t.string :last_name
      t.string :nickname
      t.integer :age
      t.string :location
      t.integer :bookings_count
      t.string :phone_number
      t.string :description
      t.string :payment_policy
      t.string :cancellation_policy
      t.integer :price_per_hour
      t.belongs_to :teacher_level, index: true

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.string   :current_sign_in_ip
      # t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :coaches, :email,                unique: true
    add_index :coaches, :reset_password_token, unique: true
    # add_index :coaches, :confirmation_token,   unique: true
    # add_index :coaches, :unlock_token,         unique: true
  end
end
