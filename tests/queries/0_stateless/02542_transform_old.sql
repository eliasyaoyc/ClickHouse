SELECT transform(number, [2, 4, 6], ['google', 'yandex', 'yahoo'], 'other') as x FROM numbers(10) GROUP BY x ORDER BY x;
SELECT '#1';
SELECT transform(number, [2, 4, 6], [29, 20, 21], 22) as x FROM numbers(10) GROUP BY x ORDER BY x;
SELECT '#2';
SELECT transform(number, [2, 4, 6], [29, 20, 21]) as x FROM numbers(10) GROUP BY x ORDER BY x;
SELECT '#3';
SELECT transform(toString(number), ['2', '4', '6'], [29, 20, 21], 22) as x FROM numbers(10) GROUP BY x ORDER BY x;
SELECT '#4';
SELECT transform(toString(number), ['2', '4', '6'], ['google', 'yandex', 'yahoo'], 'other') as x FROM numbers(10) GROUP BY x ORDER BY x;
SELECT '#5';
SELECT transform(toString(number), ['2', '4', '6'], ['google', 'yandex', 'yahoo']) as x FROM numbers(10) GROUP BY x ORDER BY x;
SELECT '----';
SELECT transform(number, [2, 4, 6], ['google', 'yandex', 'yahoo'], materialize('other')) as x FROM numbers(10) GROUP BY x ORDER BY x;
SELECT '#1';
SELECT transform(number, [2, 4, 6], [29, 20, 21], materialize(22)) as x FROM numbers(10) GROUP BY x ORDER BY x;
SELECT '#3';
SELECT transform(toString(number), ['2', '4', '6'], [29, 20, 21], materialize(22)) as x FROM numbers(10) GROUP BY x ORDER BY x;
SELECT '#4';
SELECT transform(toString(number), ['2', '4', '6'], ['google', 'yandex', 'yahoo'], materialize('other')) as x FROM numbers(10) GROUP BY x ORDER BY x;
SELECT '----';
SELECT transform(number, [2, 4, 6], [2900, 2000, 2100], 2200) as x FROM numbers(10) GROUP BY x ORDER BY x;
SELECT '#1';
SELECT transform(number, [2, 4, 6], [2900, 2000, 2100], materialize(2200)) as x FROM numbers(10) GROUP BY x ORDER BY x;
SELECT '----';
SELECT transform(number, [1], [null]) FROM system.numbers LIMIT 1; -- { serverError ILLEGAL_TYPE_OF_ARGUMENT }
