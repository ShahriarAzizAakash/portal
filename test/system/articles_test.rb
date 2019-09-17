require "application_system_test_case"

class ArticlesTest < ApplicationSystemTestCase
  setup do
    @article = articles(:one)
  end

  test "visiting the index" do
    visit articles_url
    assert_selector "h1", text: "Articles"
  end

  test "creating a Article" do
    visit articles_url
    click_on "New Article"

    fill_in "Benefits", with: @article.benefits
    fill_in "Country", with: @article.country
    fill_in "Deadline", with: @article.deadline
    fill_in "Description", with: @article.description
    fill_in "Elgibilities", with: @article.elgibilities
    fill_in "Institute", with: @article.institute
    fill_in "Process", with: @article.process
    fill_in "Title", with: @article.title
    fill_in "Typeofscholarship", with: @article.typeofscholarship
    fill_in "Url", with: @article.url
    click_on "Create Article"

    assert_text "Article was successfully created"
    click_on "Back"
  end

  test "updating a Article" do
    visit articles_url
    click_on "Edit", match: :first

    fill_in "Benefits", with: @article.benefits
    fill_in "Country", with: @article.country
    fill_in "Deadline", with: @article.deadline
    fill_in "Description", with: @article.description
    fill_in "Elgibilities", with: @article.elgibilities
    fill_in "Institute", with: @article.institute
    fill_in "Process", with: @article.process
    fill_in "Title", with: @article.title
    fill_in "Typeofscholarship", with: @article.typeofscholarship
    fill_in "Url", with: @article.url
    click_on "Update Article"

    assert_text "Article was successfully updated"
    click_on "Back"
  end

  test "destroying a Article" do
    visit articles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Article was successfully destroyed"
  end
end
