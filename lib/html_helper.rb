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
  

  # HTML DATE SELECT Helper
  def html_datepicker(field_name, years, ascending=nil, html_class=nil, html_id=nil)
    require "date"
    months, days, year_options, output, years_arr = "", "", "", "", Array.new
  
    # Months
    Date::MONTHNAMES[1..13].each do |month|
      months << "<option value=\"#{month}\">#{month}</option>"
    end
    # Days
    31.times do |n|
      days << "<option value=\"#{n + 1}\">#{n + 1}</option>"
    end
    # Years
    (years.to_i).times do |n|
      years_arr.insert(n, (Time.now.strftime("%Y").to_i) - n)
    end
    years_arr.each do |year|
      year_options << "<option value=\"#{year}\">#{year}</option>"
    end
  
    output << "<select name=\"#{field_name}_day\""
    output << " id=\"#{html_id}\"" unless html_id == nil
    output << " class=\"#{html_class}\"" unless html_class == nil
    output << ">#{days}</select>"
  
    output << "<select name=\"#{field_name}_month\""
    output << " id=\"#{html_id}\"" unless html_id == nil
    output << " class=\"#{html_class}\"" unless html_class == nil
    output << ">#{months}</select>"
    
    output << "<select name=\"#{field_name}_year\""
    output << " id=\"#{html_id}\"" unless html_id == nil
    output << " class=\"#{html_class}\"" unless html_class == nil
    output << ">#{year_options}</select>"
  
    return output
  end
  
  
end
