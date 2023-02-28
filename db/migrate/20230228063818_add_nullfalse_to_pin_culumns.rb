class AddNullfalseToPinCulumns < ActiveRecord::Migration[6.1]
  def change
    change_column_null(:pins, :name, false)
    change_column_null(:pins, :body, false)
    change_column_null(:pins, :lat, false)
    change_column_null(:pins, :lng, false)
  end
end
