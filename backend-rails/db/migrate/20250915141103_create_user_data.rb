class CreateUserData < ActiveRecord::Migration[8.0]
  def change
    create_table :user_data do |t|
      t.integer :age
      t.integer :sex
      t.integer :cp
      t.integer :trestbps
      t.integer :chol
      t.integer :fbs
      t.integer :restecg
      t.integer :thalach
      t.integer :exang
      t.float :oldpeak
      t.integer :slope
      t.integer :ca
      t.integer :thal
      t.integer :user_id 

      t.timestamps
    end
  end
end
