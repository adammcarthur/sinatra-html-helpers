module HtmlHelpers

  # HTML SELECT Helper
  def html_select(field_name, options_list, selected_value=nil, html_class=nil, html_id=nil)
    html = ""
    output = ""
    
    options_list.each do |option_value, option_name|
      html << "<option value=\"#{option_value}\""
      html << " selected=\"true\"" if option_value == selected_value
      html << ">"
      html << option_name
      html << "</option>"
    end
    
    output << "<select name=\"#{field_name}\""
    output << " id=\"#{html_id}\"" unless html_id == nil
    output << " class=\"#{html_class}\"" unless html_class == nil
    output << ">#{html}</select>"
    
    return output
  end
  
end
