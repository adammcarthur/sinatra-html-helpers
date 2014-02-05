module HtmlHelpers

  # HTML SELECT Helper
  def html_select(resource_name, field_name, options_list, selected_value = nil, html_class = nil)
    html = ""
    options_list.each do |option_value, option_name|
      html << "<option value=\"#{option_value}\" id=\"#{option_value}\""
      html << " selected=\"true\"" if option_value == selected_value
      html << ">"
      html << option_name
      html << "</option>"
    end
    "<select name=\"[#{resource_name}]#{field_name}\" id=\"#{resource_name}_#{field_name}\" class=\"\">#{html}</select>"
  end
  
end
