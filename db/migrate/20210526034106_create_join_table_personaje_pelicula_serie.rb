class CreateJoinTablePersonajePeliculaSerie < ActiveRecord::Migration[6.1]
  def change
    create_join_table :Personajes, :pelicula_series do |t|
      # t.index [:personaje_id, :pelicula_serie_id]
      # t.index [:pelicula_serie_id, :personaje_id]
    end
  end
end
