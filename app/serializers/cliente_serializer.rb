class ClienteSerializer < ActiveModel::Serializer
  attributes :email, :first_name, :last_name, :job, :country, :address, :zip_code, :phone, :codigo
  has_many :cabeceras, primary_key: 'codigo', foreign_key: 'cliente_codigo'
  has_many :footers, primary_key: 'codigo', foreign_key: 'cliente_codigo'
  has_many :descuentos, primary_key: 'codigo', foreign_key: 'cliente_codigo'
  has_many :transaccions, primary_key: 'codigo', foreign_key: 'cliente_codigo'


end

