xquery version "1.0-ml";

import module namespace vh = "http://marklogic.com/roxy/view-helper" at "/roxy/lib/view-helper.xqy";

declare option xdmp:mapping "false";

(: use the vh:required method to force a variable to be passed. it will throw an error
 : if the variable is not provided by the controller :)
(:
  declare variable $title as xs:string := vh:required("title");
    or
  let $title as xs:string := vh:required("title");
:)

(: grab optional data :)
(:
  declare variable $stuff := vh:get("stuff");
    or
  let $stuff := vh:get("stuff")
:)

<div xmlns="http://www.w3.org/1999/xhtml" class="mldbtest main">
  <p>This Controller gives you many test functions for the MLJS library. Use the navigation above to try out the tests.</p>
<link rel="stylesheet" type="text/css" href="/js/mldbtest/widgets.css" />
<script type="text/javascript" src="/js/lib/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="/js/mldbtest/mljs.js"></script>
<script type="text/javascript" src="/js/mldbtest/mljs-xhr2.js"></script>

<script type="text/javascript" src="/js/mldbtest/widgets.js"></script>

<script type="text/javascript" src="/js/mldbtest/page-main.js"></script>
  
 <div class="container_12">  
  <div id="errors" class="grid_12"></div>
 </div>
  <div id="log" class="log"><p>Checking test database for existence of test content. Please wait...</p></div>
</div>