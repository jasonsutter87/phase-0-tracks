# How I plan to learn jquery in 2 hours.
> Spend 10 minutes making sketching in a plan for how you intend to tackle jQuery and learn as much as you can in two hours. What sorts of resources will help? How often should you stop and test what you just learned? Are breaks important? Make a few notes in the file on how you plan to approach the topic, and why.

## Try try and try again. 
> I plan on going to [w3schools](http://www.w3schools.com/jquery/) to help learn jquery.

> i plan on running through their tutorial and trying our their sample code. 

> I plan on taking a break every 30 mins for 10 mins.  Since breaks are a good way to stop and absorb the information. 

> After i run through the tutorials i plan to some up with an easy script to try and write and run.


## scripts
> <html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $("button#1").click(function(){
        $("h2").hide();
    });
});

> $(document).ready(function(){
    $("button#2").click(function(){
        $("h2").show();
    });
});
</script>
</head>
<body>

> <h2>This is a heading</h2>

> <p>This is a paragraph.</p>
> <p>This is another paragraph.</p>

> <button id = "1">Click me</button>
> <button id = "2">Click me</button>

> </body>
> </html>

### notice
> To run jquary it needs to be wrapped in the script tags. 
 basic format looks like 
$(document).ready(function(){
    $("button#2").click(function(){
        $("h2").show(); 

I read this as document-> ready function -> click this to execute  the next part of code.

> $("p").hide() <- Hide p tags
$("#test").hide()  <- Hide test ids
$(".test").hide()  <- Hide test class
$(this).hide() <- Hide this tag


### selectors

You can select all <p> elements on a page like this:

$("p")

$(selector).toggle(speed,callback); toggles on and off. 