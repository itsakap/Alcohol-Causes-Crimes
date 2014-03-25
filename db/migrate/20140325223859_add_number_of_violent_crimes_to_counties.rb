class AddNumberOfViolentCrimesToCounties < ActiveRecord::Migration
  def change
    add_column :counties, :number_of_violent_crimes, :integer
  end
end
