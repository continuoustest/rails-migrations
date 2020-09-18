class CreateUniversalResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :universal_responses do |t|
      t.string :result

      t.timestamps
    end
  end
end
