<!DOCTYPE html>
<html>
  
<head>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<title>Move to Click Position</title>
<link rel="stylesheet" href="/css/style1.css">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.min.js"></script>
<script src="js/action.js"></script>
<script src="js/cookie.js"></script>
 <script src="js/bootbox.min.js"></script>

<style type="text/css">
body {
    background-color: #FFF;
    margin: 30px;
    margin-top: 10px;
}
#contentContainer {
    width: 100%;
    height: 500px;
    border: 5px black solid;
    overflow: hidden;
    background-color: #F2F2F2;
    cursor: pointer;
}
#thing {
    position: relative;
    left: 50px;
    top: 50px;
    transition: left .5s ease-in, top .5s ease-in;
}
</style>
</head>
 
<body>
<div id="saveoption" class="modal fade" style="display: none;">
  <div class="modal-dialog">
    <div class="modal-content">
      <!-- dialog body -->
      <div class="modal-body" style="color: black;">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      Your Option saved for the first time ! Thank you.
      </div>
      <!-- dialog buttons -->
      <div class="modal-footer"><button type="button" id="saveoptionbtn" class="btn btn-primary">OK</button></div>
    </div>
  </div>
</div>
<div id="choosetrue" class="modal fade" style="display: none;">
  <div class="modal-dialog">
    <div class="modal-content">
      <!-- dialog body -->
      <div class="modal-body" style="color: black;">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      You made a correct Choice ! Authentication Success.
      </div>
      <!-- dialog buttons -->
      <div class="modal-footer"><button type="button" id="choosetruebtn" class="btn btn-primary">OK</button></div>
    </div>
  </div>
</div>
<div id="choosefalse" class="modal fade" style="display: none;">
  <div class="modal-dialog">
    <div class="modal-content">
      <!-- dialog body -->
      <div class="modal-body" style="color: black;">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      The Source You opted doesn't match with our records, for security reasons, you are redirected to login again !
      </div>
      <!-- dialog buttons -->
      <div class="modal-footer"><button type="button" id="choosefalsebtn" class="btn btn-primary">OK</button></div>
    </div>
  </div>
</div>
<h1>Welcome to portal! Choose your research forum.</h1>

<img src="/images/enter/1.jpeg" id="google" style="cursor: pointer;">
<img src="/images/enter/2.jpg" id="ieee"  style="cursor: pointer;">
<img src="/images/enter/3.png" style="height: 200px;width: 583px; cursor: pointer;" id="stack">
<img src="/images/enter/4.jpg" style="height: 200px;width: 583px; cursor: pointer;" id="wiki">
<script src="js/bootbox.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>