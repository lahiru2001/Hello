% Facts
country(sri_lanka).
country(turkey).
country(india).
country(singapore).
country(maldives).
country(pakistan).

% a. Rule to create the list
country_list(List) :- List = [sri_lanka, turkey, india, singapore, maldives, pakistan].

% b. Rule to sort the country list in ascending order
sorted_country_list(SortedList) :-
    country_list(List),
    sort(List, SortedList).

% c. Rule to check if something is a country
is_country(Name) :- country(Name).

check_country(Name) :-
    is_country(Name),
    format('~w is a country.~n', [Name]).
check_country(Name) :-
    \+ is_country(Name),
    format('~w is not a country.~n', [Name]).

% d. Updated country list with Japan added at the beginning
country_list_with_japan(List) :-
    List = [japan, sri_lanka, turkey, india, singapore, maldives, pakistan].

% e. Rule to count the number of members in the list
count_members(List, Count) :- length(List, Count).
