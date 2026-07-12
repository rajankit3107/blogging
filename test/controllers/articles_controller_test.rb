require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "shows an article" do
    article = Article.create!(title: "Hello world", description: "This is a sample article.")

    get article_path(article)

    assert_response :success
    assert_select "h1", "Article"
  end
end
