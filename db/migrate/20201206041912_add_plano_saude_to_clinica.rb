class AddPlanoSaudeToClinica < ActiveRecord::Migration[6.0]
  def change
    add_column :clinicas, :plano, :string
  end
end
