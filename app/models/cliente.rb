class Cliente < ApplicationRecord

	VALIDA_FORMATO_CORREO = /\A[\w+\-.]+@[a-z\d\-.]+[a-z]+\z/i
	VALIDA_FORMATO_NOMBRE =   /\A[a-zA-Z]+\z/
	VALIDA_FORMATO_APELLIDO =   /\A[a-zA-Z]+\z/
	VALIDA_FORMATO_TIPO_PERSONA =   /\A[a-zA-Z]+\z/
	

	belongs_to :user  # creamos las relaciones entre tablas

	# agregamos las validaciones necesarias a nivel de la app
	validates :tipo_persona, format: { with: VALIDA_FORMATO_TIPO_PERSONA }, presence: true
	validates :nro_doc_id, length: {minimun: 8, maximum: 10, message: "Sólo se permiten Números"}, numericality: true, presence: true
	validates :fecha_emision, presence: true 
	validates :fecha_vencimiento, presence: true
	validates :nombre, length: {minimun: 3, maximum: 50}, format: { with: VALIDA_FORMATO_NOMBRE, message: "Sólo se permiten Letras" }, presence: true
	validates :apellido, length: {minimun: 3, maximum: 50}, format: { with: VALIDA_FORMATO_APELLIDO, message: "Sólo se permiten Letras" }, presence: true
	validates :correo, format: { with: VALIDA_FORMATO_CORREO }, uniqueness: true, presence: true
	validates :telf_ppal, length: {minimun: 7, maximum: 15, message: "Sólo se permiten Números" }, numericality: true, presence: true
	validates :telf_sec, length: {minimun: 7, maximum: 15, message: "Sólo se permiten Números"}, numericality: true, presence: true

end
