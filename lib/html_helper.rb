def html_select(field_name, options_list, selected_value=nil, html_class=nil, html_id=nil)
  html, output = "", ""
  options_list.each do |option_value, option_name|
    html << "  <option value=\"#{option_value}\""
    html << " selected=\"true\"" if option_value == selected_value
    html << ">"
    html << option_name
    html << "</option>\n"
  end
    
  output << "<select name=\"#{field_name}\""
  output << " id=\"#{html_id}\"" unless html_id == nil
  output << " class=\"#{html_class}\"" unless html_class == nil
  output << ">\n#{html}</select>\n"
    
  return output
end

def html_datepicker(field_name, years, selected_value=[], offset=nil, ascending=false, html_class=nil, html_id=nil)
  require "date"
  # initialize blank variables for use below
  months, days, year_options, output, selected_day, selected_month, selected_year = "", "", "", "", "", "", ""
  years_arr = Array.new
  # assign variables to selected values if they exist
  selected_day = selected_value[0].to_i if selected[0]
  selected_month = selected_value[1].to_s if selected[1]
  selected_year = selected_value[2].to_i if selected[2]

  ##### DAYS #####
  31.times do |n|
    # lists out 31 days
    days << "  <option value=\"#{n + 1}\""
    days << " selected=\"true\"" if selected_day == n + 1
    days << ">#{n + 1}</option>\n"
  end
  # add to output queue
  output << "<select name=\"#{field_name}_day\""
  output << " id=\"#{html_id}\"" unless html_id == nil
  output << " class=\"#{html_class}\"" unless html_class == nil
  output << ">\n#{days}</select>\n"

  #### MONTHS ####
  Date::MONTHNAMES[1..13].each do |month|
    # list out all months
    months << "  <option value=\"#{month}\""
    months << " selected=\"true\"" if selected_month == month
    months << ">#{month}</option>\n"
  end
  # add to output queue
  output << "<select name=\"#{field_name}_month\""
  output << " id=\"#{html_id}\"" unless html_id == nil
  output << " class=\"#{html_class}\"" unless html_class == nil
  output << ">\n#{months}</select>\n"

  ##### YEARS ####
  (years.to_i + 1).times do |n|
    if ascending == false
      # Creates an array with the required years by adding/subtracting
      # from the current year. The "offset" is added/subtracted if it has been set.
      years_arr.insert(n, (Time.now.strftime("%Y").to_i - offset.to_i ) - n)
    else 
      # ascending years option has been turned ON by the user
      years_arr.insert(n, (Time.now.strftime("%Y").to_i + offset.to_i) + n)
    end
  end
  years_arr.each do |year|
    # list out every year from the array
    year_options << "  <option value=\"#{year}\""
    year_options << " selected=\"true\"" if selected_year == year
    year_options << ">#{year}</option>\n"
  end
  # add to output queue
  output << "<select name=\"#{field_name}_year\""
  output << " id=\"#{html_id}\"" unless html_id == nil
  output << " class=\"#{html_class}\"" unless html_class == nil
  output << ">\n#{year_options}</select>\n"

  return output
end
