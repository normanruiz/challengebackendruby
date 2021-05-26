class CreateJoinTableGeneroPeliculaSerie < ActiveRecord::Migration[6.1]
  def change
    create_join_table :Generos, :pelicula_series do |t|
      # t.index [:genero_id, :pelicula_serie_id]
      # t.index [:pelicula_serie_id, :genero_id]
    end
  end
end
