<?php

$start = mb_substr($argn, 0, 2, 'UTF-8');
$end = mb_substr($argn, mb_strlen($argn) - 2, 2);
if ($start == $end)
    echo $argn, PHP_EOL;