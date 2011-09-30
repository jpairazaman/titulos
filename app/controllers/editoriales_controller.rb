class EditorialesController < InheritedResources::Base
  def index2
    if params[:search]
      @editoriales = Editorial.find(:all, :conditions => ['nombre LIKE ?', "%#{ params[:search].upcase }%" ] )
    else
      @editoriales = Editorial.find(:all)
    end
  end


  def index
      @editoriales = Editorial.buscar(params[:buscar]).paginate(:per_page => 5, :page => params[:page])
  end


end
