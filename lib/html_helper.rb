module HtmlHelpers

  # Basic implementation of a HTML SELECT helper
  def html_select(resource_name, field_name, options_list, selected_value, html_class)
    html = ""
    options_list.each do |kv_pair|
      option_value = kv_pair.keys.first
      option_name = kv_pair.values.first
      html << "<option value=\"#{option_value}\" id=\"#{option_value}\""
      html << " selected=\"true\"" if option_value == selected_value
      html << ">"
      html << option_name
      html << "</option>"
    end
    "<select name=\"#{if resource_name}[#{resource_name}]#{end}#{field_name}\" id=\"[#{resource_name}]#{field_name}\"#{if html_class} class=\"#{html_class}\"#{end}>#{html}</select>"
  end
end
