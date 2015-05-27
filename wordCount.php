<?php
if($_GET) {
$id = $_GET["id"];
print_r('<P>Supplaien id wa: ');
print_r($_GET['id']);
print_r('</P>');
}
else
{
parse_str(implode('&', array_slice($argv, 1)), $_GET);
print_r('<P>You supplied: ');
print_r($_GET);
print_r('</P>');
}

$charSet = 'AaĀāÁáǍǎÀàÄäǞǟÄ́ä́Ä̌ä̌Ä̀ä̀BbCcÇçČčĈĉDdĐđEeĒēÉéĚěÈèFfGgĜĝ' .
'HhĤĥIiĪīÍíǏǐÌìJjKkLlMmM̄m̄ḾḿM̌m̌M̀m̀NnN̄n̄ŃńŇňǸǹŊŋŊ̄ŋ̄' .
'Ŋ́ŋ́Ŋ̌ŋ̌Ŋ̀ŋ̀OoŌōÓóǑǒÒòÖöȪȫÖ́ö́Ö̌ö̌Ö̀ö̀PpQqRrŘřSsŠšŜŝTtŦŧ' .
'UuŪūÚúǓǔÙùÜüǕǖǗǘǙǚǛǜVvWwXxYyZzŽžẐẑ0123456789';
$hFile = @fopen("./input/".$_GET['id'].".txt", "r") or exit("\nUnable to open file: " . $PARAM);

// my ($lines, $words, $chars) = (0,0,0);

if ($hFile)
{
$freqData = array();
while(!feof($hFile))
{
$Line = fgets($hFile);
$lines++;
$chars += strlen($Line);
$Words = str_word_count($Line, 1, $charSet);
print_r($Words);
$words += count($Words);
foreach ($Words as $Word) {
array_key_exists( $Word, $freqData ) ? $freqData[ $Word ]++ : $freqData[ $Word ] = 1;
}
}
fclose($hFile);
arsort($freqData);
}

print("<hr>");
print("<P>Statistics: lines=$lines words=$words chars=$chars</P>");
print_r($freqData);

?>
