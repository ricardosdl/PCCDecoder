select word
from
(
    select word from words where length(word) = 18 and substr(word, 1, 2) = substr(word, 17, 2)
)
where substr(word, 1, 2) in (select substr(word, 1, 2) from words where length(word) = 8);

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