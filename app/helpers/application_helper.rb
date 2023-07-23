module ApplicationHelper
    def markdown_to_html(text)
      Kramdown::Document.new(text, input: 'GFM').to_html.html_safe
    end
end
  