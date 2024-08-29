% Facts: male and female members of the family
male(johil).
male(john).
male(peter).
male(paul).
male(pranav).
male(yathav).
male(kiran).

female(johana).
female(samila).
female(rose).
female(nayana).
female(amala).
female(sana).
female(sakthi).

% Facts: parent-child relationships
parent(johil, john).
parent(johana, john).
parent(johil, peter).
parent(johana, peter).
parent(johil, samila).
parent(johana, samila).
parent(johil, rose).
parent(johana, rose).

parent(paul, johil).
parent(paul, nayana).
parent(paul, amala).
parent(paul, sana).

parent(pranav, paul).
parent(pranav, sakthi).
parent(pranav, yathav).
parent(pranav, kiran).

% Rules
father(Father, Child) :- male(Father), parent(Father, Child).
mother(Mother, Child) :- female(Mother), parent(Mother, Child).

ancestor(Ancestor, Person) :- parent(Ancestor, Person).
ancestor(Ancestor, Person) :- parent(Parent, Person), ancestor(Ancestor, Parent).

count_ancestors(Person, Count) :-
    setof(Ancestor, ancestor(Ancestor, Person), Ancestors),
    length(Ancestors, Count).

list_males(Males) :- setof(Male, male(Male), Males).
list_females(Females) :- setof(Female, female(Female), Females).

count_males(Count) :- list_males(Males), length(Males, Count).
count_females(Count) :- list_females(Females), length(Females, Count).
