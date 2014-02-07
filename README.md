Sinatra HTML Helpers makes rendering difficult markup elements in Sinatra really simple:

### HTML Select Box: ###

    html_select(field_name, options_list, selected_value, html_class, html_id)

**Simple Example:**

    html_select("color", "{'red' => 'Red', 'blue' => 'Blue', 'green' => 'Green' }")
    
    # HTML Output
    <select name="color">
      <option value="red">Red</option>
      <option value="blue">Blue</option>
      <option value="green">Green</option>
    </select>

**Advanced Example:**

    html_select("[user]city", { 'mel' => 'Melbourne', 'nyc' => 'New York City'}, "London", nil, "target_me")

    # HTML Output
    <select name="[user]city" id="target_me">
      <option value="mel">Melbourne</option>
      <option value="nyc">New York City</option>
      <option value="lon" selected="true">London</option>
    </select>
