class CreateAnswerUsers < ActiveRecord::Migration
  def change
    create_table :answer_users do |t|
      t.references :user
      t.references :answer
    end
  end
end
