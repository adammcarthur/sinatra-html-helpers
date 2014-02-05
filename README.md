A soon to be small collection of handy HTML helpers for Sinatra.

### HTML Select Box: ###

    html_select(resource_name, field_name, options_list, selected_value, html_class)

**Simple Example:**

    html_select(nil, "color", "{'red' => 'Red', 'blue' => 'Blue', 'green' => 'Green' }")
    
    # HTML Output
    <select name="color" id="color">
      <option value="red">Red</option>
      <option value="blue">Blue</option>
      <option value="green">Green</option>
    </select>

**Advanced Example:**

    # Full Example
    html_select("user", "city", { 'mel' => 'Melbourne', 'nyc' => 'New York City', 'lon' => 'London'}, "London", "city")

    # HTML Output
    <select name="[user]city" id="user_city" class="city">
      <option value="mel">Melbourne</option>
      <option value="nyc">New York City</option>
      <option value="lon" selected="true">London</option>
    </select>
