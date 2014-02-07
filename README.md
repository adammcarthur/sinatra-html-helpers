Sinatra HTML Helpers makes rendering difficult markup elements in Sinatra really simple:

### HTML Select Box: ###

    html_select(field_name, options_list, selected_value, html_class, html_id)

**Simple Example:**

    html_select("color", "{'red' => 'Red', 'blue' => 'Blue', 'green' => 'Green' }")
    
    <!-- HTML Output -->
    <select name="color">
      <option value="red">Red</option>
      <option value="blue">Blue</option>
      <option value="green">Green</option>
    </select>

**Advanced Example:**

    html_select("[user]city", { 'mel' => 'Melbourne', 'nyc' => 'New York City'}, "lon", nil, "target_me")

    # HTML Output
    <select name="[user]city" id="target_me">
      <option value="mel">Melbourne</option>
      <option value="nyc">New York City</option>
      <option value="lon" selected="true">London</option>
    </select>

### HTML Datepicker ###

    html_datepicker(field_name, years, html_class, html_id)
    
**Simple Example:**

    # List out 100 years from now
    html_datepicker("birthday", 100)
    
    <!-- HTML Output -->
    <select name="birthday_day">
      <option value="1">1</option>
      <option value="2">2</option>
      ...
      <option value="31">31</option>
    </select>
    <select name="birthday_month">
      <option value="January">January</option>
      <option value="February">February</option>
      ...
      <option value="December">December</option>
    </select>
    <select name="birthday_year">
      <option value="2014">2014</option>
      <option value="2013">2013</option>
      ...
      <option value="1914">1914</option>
    </select>
    
