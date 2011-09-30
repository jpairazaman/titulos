class Editorial < ActiveRecord::Base
  has_many :titulos

  validates_presence_of :codigo, :nombre
  validates_uniqueness_of :codigo, :nombre

  scope :disponible, where( :disponible => true )
  scope :nodisponible, where( :disponible => false )

  def self.buscar(buscar)
    if buscar
      where('nombre LIKE ?', "%#{buscar.upcase}%")
    else
      scoped
    end
  end

  def to_s
    nombre + " - [" + codigo + "]"
  end

end
