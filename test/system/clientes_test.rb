require "application_system_test_case"

class ClientesTest < ApplicationSystemTestCase
  setup do
    @cliente = clientes(:one)
  end

  test "visiting the index" do
    visit clientes_url
    assert_selector "h1", text: "Clientes"
  end

  test "should create cliente" do
    visit clientes_url
    click_on "New cliente"

    fill_in "Apellido", with: @cliente.apellido
    fill_in "Correo", with: @cliente.correo
    fill_in "Fecha emision", with: @cliente.fecha_emision
    fill_in "Fecha vencimiento", with: @cliente.fecha_vencimiento
    fill_in "Nombre", with: @cliente.nombre
    fill_in "Nro doc", with: @cliente.nro_doc_id
    fill_in "Telf ppal", with: @cliente.telf_ppal
    fill_in "Telf sec", with: @cliente.telf_sec
    fill_in "Tipo persona", with: @cliente.tipo_persona
    click_on "Create Cliente"

    assert_text "Cliente was successfully created"
    click_on "Back"
  end

  test "should update Cliente" do
    visit cliente_url(@cliente)
    click_on "Edit this cliente", match: :first

    fill_in "Apellido", with: @cliente.apellido
    fill_in "Correo", with: @cliente.correo
    fill_in "Fecha emision", with: @cliente.fecha_emision
    fill_in "Fecha vencimiento", with: @cliente.fecha_vencimiento
    fill_in "Nombre", with: @cliente.nombre
    fill_in "Nro doc", with: @cliente.nro_doc_id
    fill_in "Telf ppal", with: @cliente.telf_ppal
    fill_in "Telf sec", with: @cliente.telf_sec
    fill_in "Tipo persona", with: @cliente.tipo_persona
    click_on "Update Cliente"

    assert_text "Cliente was successfully updated"
    click_on "Back"
  end

  test "should destroy Cliente" do
    visit cliente_url(@cliente)
    click_on "Destroy this cliente", match: :first

    assert_text "Cliente was successfully destroyed"
  end
end
