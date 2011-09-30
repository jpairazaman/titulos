class TitulosController < InheritedResources::Base
  helper_method :sort_column, :sort_direction

  def collection
    @titulos ||= end_of_association_chain.includes( :editorial, :categoria ).buscar(params[:buscar]).order(sort_column + ' ' + sort_direction).page(params[:page]).per(5)

  end

=begin
  def index  
    @titulos = Titulo.order(sort_column + ' ' + sort_direction).page(params[:page]).per(5)
  end  
=end

  private  
  def sort_column  
    # params[:sort] || "codigo"  
    Titulo.column_names.include?(params[:sort]) ? params[:sort] : "codigo"
  end  
    
  def sort_direction  
    # params[:direction] || "asc"  
    %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
  end  

end
