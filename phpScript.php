<?php

$word = "P2A3";

list($o1, $o2, $o3, $o4) = [0, 1, 2, 3];
//$baseLetter = 65;

//$wordLetters = explode()

foreach(range(65, 90) as $b1) {
    $l1 = $b1 + $o1++;
    foreach(range(65, 90) as $b2) {
        $l2 = $b2 + $o2++;
        foreach(range(65, 90) as $b3) {
            $l3 = $b3 + $o3++;
            foreach(range(65, 90) as $b4) {
                $l4 = $b4 + $o4++;
                echo chr($l1), chr($l2), chr($l3), chr($l4), PHP_EOL;
            }
        }
    }
}


//code used to generate the words
//foreach(range(65, 90) as $l1) {
//    foreach(range(65, 90) as $l2) {
//        foreach(range(65, 90) as $l3) {
//            foreach(range(65, 90) as $l4) {
//                echo chr($l1), chr($l2), chr($l3), chr($l4), PHP_EOL;
//            }
//        }
//    }
//}

//var_dump($l1, $l2, $l3, $l4);

//65..90

