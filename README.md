# Intermediate

## Model Classes

In the previous SA we worked with a product model, and in lack of originality, I would like to continue the theme so I would like to declare a product model and a category model for the final project.

**Product Model:**

- Name: String
- Price: Float
- Quantity: Integer

**Category Model:**

- Name: String
- Description: Text
- Status: Boolean

For the validations of each attribute and their respective data type, I'm going to make sure that the attribute is present in the model. For strings, boolean data, and text types, I plan on only ensuring their presence. For the float and integer data types, I think ensuring their presence and ensuring their range would be ideal since we would not like to have negative quantities of products nor negative prices.

**Updates:** I decided to add more type validation for the boolean types to ensure that the only available responses for it are true and false which will evaluate to active or inactive to ensure better readability. Furthermore, for the integer data type, I ensured that it was only an integer value and for strings, I ensured a minimum and maximum length.

## Sorting or Searching

Regarding sorting or searching, I think sorting the data would be more beneficial to implement because most websites allow the users to sort the data by their price. So, for the products model and html page, I plan on implementing a sort function that is capable of sorting based on price, in ascending order. No current plans for the category model.

**Updates:** I made it so that the sort feature can sort based on whatever attribute the user chooses to follow the guidelines of the project, therefore, now the user can select their desired attribute and update it! Also added server side sorting to the category model! 

## Logic/Pseudocode

### HTML

- create a button with the sortByPrice ID
- use the `<table>` tag to create a table with a columns for each attributes
- iterate through the product model to retrieve the attributes for each of the seeds, so that it can be appended into the table
- code:
  ```
  products.each do |product|
    product.atrrOne
    product.attrTwo
    product.attrThree
  ```

### JavaScript

- create a js file that is capable of listening to the button for click actions
- retrieve the data from the rows in the table
- call the sort method to sort the data
- compare the values that we received from the rows, in this case, the prices
- code:
  ```
  listen for ('click')
  rows = table[0]
  rows.sort()
  if rows.data < current data:
    place that data first
  return table
  ```
- not the best with JS code but I will research it later and look how to compare the data since I'm not sure my current implementation is possible.

**Update:**

- I allowed the user to select their attribute which was acquired using the attributes html ID.
- Iterated through the columns to find the index of the attribute.
- Based on its type, we conducted a string comparison or numerical comparison
- Code:
  - Create function to iterate and find the index called: getColumnIndex using a for loop that returns i.
  - Use `$('#sortAttribute').val();` to retrieve the user selected value
  - return `isNaN(aValue) ? aValue.localeCompare(bValue) : parseFloat(aValue) - parseFloat(bValue);` use this return statement to compare the value using its appropriate data type

## Server Side Sorting
- added server side sorting to the category model 
- used the .order() method in the controller for the category model and added a drop menu for the HTML file
- drop down menu return the parameter to sort by 
