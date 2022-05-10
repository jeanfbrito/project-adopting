require "application_system_test_case"

class AnimalsTest < ApplicationSystemTestCase
  setup do
    @animal = animals(:one)
  end

  test "visiting the index" do
    visit animals_url
    assert_selector "h1", text: "Animals"
  end

  test "should create animal" do
    visit animals_url
    click_on "New animal"

    fill_in "Birth", with: @animal.birth
    fill_in "Breed", with: @animal.breed
    fill_in "Description", with: @animal.description
    fill_in "Gender", with: @animal.gender
    fill_in "Name", with: @animal.name
    check "Neutered" if @animal.neutered
    fill_in "Size", with: @animal.size
    check "Vaccinated" if @animal.vaccinated
    click_on "Create Animal"

    assert_text "Animal was successfully created"
    click_on "Back"
  end

  test "should update Animal" do
    visit animal_url(@animal)
    click_on "Edit this animal", match: :first

    fill_in "Birth", with: @animal.birth
    fill_in "Breed", with: @animal.breed
    fill_in "Description", with: @animal.description
    fill_in "Gender", with: @animal.gender
    fill_in "Name", with: @animal.name
    check "Neutered" if @animal.neutered
    fill_in "Size", with: @animal.size
    check "Vaccinated" if @animal.vaccinated
    click_on "Update Animal"

    assert_text "Animal was successfully updated"
    click_on "Back"
  end

  test "should destroy Animal" do
    visit animal_url(@animal)
    click_on "Destroy this animal", match: :first

    assert_text "Animal was successfully destroyed"
  end
end
