<?php
//This is comment
#This is comment
/*..........Enter multiple
line comment..................*/
echo "<h1>hello world</h1><br>";
$x= 5;
$y= 6;
echo $x+$y,"<br>";
var_dump($x);
echo "<br>";

$x+=$y;
echo $x;

if ($x<12){
echo "Good morning,<br>";
}
else{
echo "Good afternoon";
}

#first question to print even number upto 100 except 44
$i=0;
for ($i=0;$i<=100;$i=$i+2)
{
if ($i==44){
    continue;
}
else if ($i==100){
    echo $i."<br>";
}
else{
    echo $i.",";
}
}

#to print multiplication table of 45
$j=45;
$n=1;
for ( $n = 1 ; $n <= 10 ; $n++ )
{
    $m=$j*$n;
    echo $j."*".$n."=".$m."<br>";
}
?>