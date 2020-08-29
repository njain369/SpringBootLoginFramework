<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>SmartTimetable</title>
<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/4.3.1/darkly/bootstrap.min.css">
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">   
<style>
  .container { margin: 150px auto; }
  #myInput {
  background-position: 10px 10px;
  background-repeat: no-repeat;
  width: 20%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
}
  
  </style>
</head>

<body>
<div class="jquery-script-clear"></div>
</div>
</div>
  <div class="container">
    <h1>Time Table On Bench! :) Go Excel your Day <button onclick="addrow()"><i class="fa fa-plus" aria-hidden="true"></i></button>
   <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for timeslot.." title="Type in a time">
   
   </h1>
    <table class="table" id="myTable">
    <thead>
      <tr>
        <th data-card-title>Time</th>
        <th data-card-action-links>Task to be Done</th>
        <th data-card-footer>Edit</th>
      </tr>
    </thead>
    <tbody id="tb">
    
     <c:forEach items="${tts}" var="tt">
     <tr>
      <td>${tt.time}</td>
     <td>${tt.task}</td>
     </tr>
     </c:forEach>
      
    </tbody>
  </table>
  </div>
<script>
function myFunction() {
	  var input, filter, table, tr, td, i, txtValue;
	  input = document.getElementById("myInput");
	  filter = input.value.toUpperCase();
	  table = document.getElementById("myTable");
	  tr = table.getElementsByTagName("tr");
	  for (i = 0; i < tr.length; i++) {
	    td = tr[i].getElementsByTagName("td")[0];
	    if (td) {
	      txtValue = td.textContent || td.innerText;
	      if (txtValue.toUpperCase().indexOf(filter) > -1) {
	        tr[i].style.display = "";
	      } else {
	        tr[i].style.display = "none";
	      }
	    }       
	  }
	}
  var i=0;
  
  function addrow(){
	  var tr=document.createElement("TR");
	  tr.id="tr"+i+"";
	  document.getElementById("tb").appendChild(tr);
	   
	   var td=document.createElement("TD");
	   td.innerHTML="Created New Column";
	   var td1=document.createElement("TD");
	   td1.innerHTML="Good";
	   var td2=document.createElement("TD");
	   td2.innerHTML="It is Nice";

	   document.getElementById("tr"+i+"").appendChild(td);
	   document.getElementById("tr"+i+"").appendChild(td1);
	   document.getElementById("tr"+i+"").appendChild(td2);
	   
	   i++;  
	   
  }
  </script>
  
<script src="https://code.jquery.com/jquery-3.4.0.slim.min.js" integrity="sha384-7WBfQYubrFpye+dGHEeA3fHaTy/wpTFhxdjxqvK04e4orV3z+X4XC4qOX3qnkVC6" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="static/js/tableToCards.js"></script>
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-36251023-1']);
  _gaq.push(['_setDomainName', 'jqueryscript.net']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
</body>
</html>
