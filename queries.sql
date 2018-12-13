select A.word, B.word
from
(
    select word from words where length(word) = 4
) A
join (select word from words where length(word) = 10) B ON
    (substr(B.word, 5, 4) = A.word) AND (substr(B.word, 3, 2) = substr(A.word, 3, 2))
order by A.word, B.word;

select word
from
(
    select word from words where length(word) = 18 and substr(word, 1, 2) = substr(word, 17, 2)
)
where substr(word, 1, 2) in (select substr(word, 1, 2) from words where length(word) = 8);

select A.word, B.word
from
(
    select word from words where length(word) = 18 and substr(word, 1, 2) = substr(word, 17, 2)
) A
join (select word from words where length(word) = 8) B
    ON (substr(B.word, 1, 2) = substr(A.word, 1, 2)) AND
    (substr(B.word, 5, 2) = substr(A.word, 12, 2));



select word from (select word from words where length(word)=10);

select word
from
(
 select word
 from words
 where length(word)=10
)
where substr(word, 5, 4) in (select word from words where length(word)=4);

select word
from
(
 select word
 from words
 where length(word)=10
)
where substr(substr(word, 5, 4), 1, 2) in (select substr(word, 1, 2) from words where length(word)=4) and (substr(word, 5, 4) in (select word from words where length(word)=4));

select count(word)
from
(
 select word
 from words
 where length(word)=10
)
where substr(substr(word, 5, 4), 1, 2) in (select substr(word, 1, 2) from words where length(word)=4) and (substr(word, 5, 4) in (select word from words where length(word)=4));

select count(word)
from
(
 select word
 from words
 where length(word)=10
)
where substr(word, 5, 4) in (select word from words where length(word)=4);