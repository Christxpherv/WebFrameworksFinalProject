// includes the jQuery library from google's CDN
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

  $(document).ready(function() {
    // event listener for the click action 
    $('#sortByPrice').on('click', function(e) {
      e.preventDefault(); 
      
      // notify the console that the link was clicked (for debugging purposes)
      console.log("Sort by Price link clicked."); 
      
      // get the table and its rows
      const table = $('.products-table');
      const rows = table.find('tbody > tr').get();

      // sort the rows by the price of the product
      rows.sort((a, b) => {
        const aValue = parseFloat($(a).find('td').eq(1).text()); 
        const bValue = parseFloat($(b).find('td').eq(1).text()); 
        // notify the console of the values of the products
        console.log("aValue:", aValue);
        console.log("bValue:", bValue);
        // sort the products by their price in ascending order
        return aValue - bValue;
      });

      table.find('tbody').empty().append(rows);
    });
  });
