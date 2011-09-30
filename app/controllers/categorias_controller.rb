class CategoriasController < InheritedResources::Base
  helper_method :sort_column, :sort_direction

  def collection
    @categorias ||= end_of_association_chain.buscar(params[:buscar]).order(sort_column + ' ' + sort_direction).page(params[:page]).per(5)
  end

=begin
  def index  
    @titulos = Titulo.order(sort_column + ' ' + sort_direction).page(params[:page]).per(5)
  end  
=end

  private  
  def sort_column  
    # params[:sort] || "codigo"  
    Categoria.column_names.include?(params[:sort]) ? params[:sort] : "nombre"
  end  
    
  def sort_direction  
    # params[:direction] || "asc"  
    %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
  end  

end
