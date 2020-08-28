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
  </style>
</head>

<body>
<div class="jquery-script-clear"></div>
</div>
</div>
  <div class="container">
    <h1>Time Table On Bench! :) Go Excel your Day <button onclick="addrow()"><i class="fa fa-plus" aria-hidden="true"></i></button>
   </h1>
    <table class="table" id="myTable">
    <thead>
      <tr>
        <th data-card-title>Firstname</th>
        <th data-card-action-links>URL</th>
        <th data-card-footer>Email</th>
      </tr>
    </thead>
    <tbody id="tb">
      <tr>
        <td>John</td>
        <td><a href="https://www.jqueryscript.net">https://www.jqueryscript.net</a></td>
        <td>john@example.com</td>
      </tr>
      <tr>
        <td>Mary</td>
        <td><a href="https://www.jqueryscript.net">https://www.jqueryscript.net</a></td>
        <td>mary@example.com</td>
      </tr>
      <tr>
        <td>July</td>
        <td><a href="https://www.jqueryscript.net">https://www.jqueryscript.net</a></td>
        <td>july@example.com</td>
      </tr>
      
    </tbody>
  </table>
  </div>
<script>
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
