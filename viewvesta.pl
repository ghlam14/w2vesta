#!/usr/bin/perl

require "../../libs/w2web.pl";

&GetInput;
&GetSession;

$OUT = <<__STOP__;
<h3>  View structure with VESTA</h3>

Requires X-Windows system ...

__STOP__


$umps = qx(echo $DISPLAY && cd $DIR && vesta $CASE.struct   &); 
$OUT .= <<__STOP__;
<pre>
$DISPLAY
VESTA $CASE.struct 
$umps
</pre>
__STOP__


PrintPage("vesta", $OUT);
