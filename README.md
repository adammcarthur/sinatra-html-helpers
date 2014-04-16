This small collection of HTML Helpers makes rendering complex markup elements really simple:

### HTML Select Box:

``` ruby
html_select(field_name, options_list, selected_value, html_class, html_id)
```

**Simple Example:**

``` ruby
html_select("color", "{'red' => 'Red', 'blue' => 'Blue', 'green' => 'Green' }")
```

``` html
<!-- HTML Output -->
<select name="color">
  <option value="red">Red</option>
  <option value="blue">Blue</option>
  <option value="green">Green</option>
</select>
```

**Advanced Example:**

``` ruby
html_select("[user]city", { 'mel' => 'Melbourne', 'nyc' => 'New York City'}, "lon", nil, "target_me")
```

``` html
<!-- HTML Output -->
<select name="[user]city" id="target_me">
  <option value="mel">Melbourne</option>
  <option value="nyc">New York City</option>
  <option value="lon" selected="true">London</option>
</select>
```

### HTML Datepicker

``` ruby
html_datepicker(field_name, years, selected_value, offset, ascending=false, html_class, html_id)
```
    
Please note that in the parameters above, `selected_value` takes an array of 3 values [D, M, Y], and `ascending` takes a BOOLEAN value - that is, `true` or `false`.
    
**Simple Example:**

``` ruby
# List out 100 years from now
html_datepicker("birthday", 100)
```

``` html
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
```

**Advanced Example I: With Offset And Default Selected Date**

In this example, a default date has been set on our date selector. We've also used the `offset` parameter, which limits the highest possible year (in descending mode), or limits the lowest possible year (in ascending mode). When using the `offset` feature, you will need to adjust the `years` parameter (eg - 95 + 5 = 100).

``` ruby
html_datepicker("[User]birthday", 95, [4, "December", 1914], 5, false, "hi_there", nil)
```

``` html
<!-- HTML Output -->
<select name="[User]birthday_day" class="hi_there">
  ...
  <option value="4" selected="true">4</option>
  ...
</select>
<select name="[User]birthday_month" class="hi_there">
  ...
  <option value="December" selected="true">December</option>
</select>
<select name="[User]birthday_year" class="hi_there">
  # Starts at 2009 due to the offset of 5 (2014 - 5)
  <option value="2009">2009</option>
  <option value="2008">2008</option>
  ...
  <option value="1914" selected="true">1914</option>
</select>
```

**Advanced Example II: Ascending Mode**

In ascending mode, the years progress into the future as opposed to back in time. Activiate it by calling `true` on the `ascending` parameter.

``` ruby
html_datepicker("booking", 5, nil, nil, true)
```

``` html
<!-- Shortened HTML Output -->
<option value="2014">2014</option>
<option value="2015">2015</option>
...
<option value="2019">2019</option>
```
