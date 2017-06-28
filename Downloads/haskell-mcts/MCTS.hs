{-# LANGUAGE MultiParamTypeClasses #-}

module MCTS where

import GameState

import Prelude hiding (traverse)
import System.Random

{-
    *** TODO ***

    Implementați tipul `Tree s a`, al arborilor de căutare, unde `s` reprezintă
    tipul stărilor, iar `a`, tipul acțiunilor.

    Sunt necesare câmpuri, precum:
    * starea curentă
    * acțiunea prin care s-a ajuns la stare
    * numărul de vizitări
    * scorul
    * copiii.
-}
data Tree s a = UndefinedTree

{-
    *** TODO ***

    Implementați tipul `Zipper s a`, pentru parcurgerea arborilor de căutare
    de tipul `Tree s a`, unde `s` reprezintă tipul stărilor, iar `a`, tipul
    acțiunilor.

    Pe lângă componentele specifice unui zipper (vezi tutorialul din enunț),
    se va reține și un generator de numere aleatoare, modificat pe parcursul
    explorării arborelui.
-}
data Zipper s a = UndefinedZipper

{-
    *** TODO ***

    Instanțiați clasa `Show` cu tipul `Tree s a`.
-}
instance (Show s, Show a) => Show (Tree s a) where
    show = undefined

{-
    ****************
    Funcții de acces
    ****************
-}

{-
    *** TODO ***

    Întoarce starea asociată unui nod.
-}
treeState :: Tree s a -> s
treeState = undefined

{-
    *** TODO ***

    Întoarce starea asociată unui nod.
-}
treeAction :: Tree s a -> a
treeAction = undefined

{-
    *** TODO ***

    Întoarce scorul unui nod.
-}
treeScore :: Tree s a -> Float
treeScore = undefined

{-
    *** TODO ***

    Întoarce numărul de vizitări ale unui nod.
-}
treeVisits :: Tree s a -> Int
treeVisits = undefined

{-
    *** TODO ***

    Întoarce copiii unui nod.
-}
treeChildren :: Tree s a -> [Tree s a]
treeChildren = undefined

{-
    *** TODO ***

    Întoarce nodul pe care este centrat zipper-ul.
-}
zipperTree :: Zipper s a -> Tree s a
zipperTree = undefined

{-
    *** TODO ***

    Întoarce generatorul de numere aleatoare din interiorul zipper-ului.
-}
zipperGen :: Zipper s a -> StdGen
zipperGen = undefined

{-
    *****************
    Funcții pe arbori
    *****************
-}

{-
    *** TODO ***

    Construiește un arbore de căutare (eventual infinit), pornind de la funcția
    de generare a succesoarelor unei stări și de la starea inițială.
-}
expand :: (s -> [(a, s)])  -- Generatorul stărilor succesoare
       -> s                -- Starea inițială
       -> Tree s a         -- Arborele de căutare
expand = undefined

{-
    *** TODO ***

    Explorează arborele, alegând la fiecare pas un succesor aleator,
    până la atingerea unei stări terminale (victorie/ remiză).

    Întoarce:
    * calea urmată, în ordine inversă, astfel că primul element din cale
      este nodul terminal
    * semnificația stării terminale (victorie/ remiză)
    * varianta finală a generatorului de numere aleatoare.
-}
rolloutTree :: GameState s a => Tree s a -> StdGen -> ([Tree s a], Outcome, StdGen)
rolloutTree = undefined

{-
    *** TODO ***

    Determină cel mai bun copil al unui nod, din perspectiva raportului
    scor / număr de vizitări.

    Hint: `maximumBy` și `comparing`.
-}
bestChild :: Tree s a -> Tree s a
bestChild = undefined

{-
    *******************
    Funcții de zipper-e
    *******************
-}

{-
    *** TODO ***

    Construiește un zipper centrat pe arborele dat, care stochează generatorul
    de numere aleatoare precizat.
-}
getZipper :: Tree s a -> StdGen -> Zipper s a
getZipper = undefined

{-
    *** TODO ***

    Verifică dacă zipper-ul este centrat pe rădăcina arborelui.
-}
isRoot :: Zipper s a -> Bool
isRoot = undefined

{-
    *** TODO ***

    Valoarea ucb1 din filmuleț (constanta C = 2).
-}
ucb1 :: Float  -- scorul copilului
     -> Int    -- numărul de vizitări ale copilului
     -> Int    -- numărul de vizitări ale părintelui
     -> Float  -- estimarea
ucb1  = undefined

{-
    *** TODO ***

    Pentru nodul pe care este centrat zipper-ul dat ca parametru, selectează
    copilul având valoarea ucb1 maximă. Întoarce zipper-ul centrat pe copilul
    respectiv.

    Atenție! Așa cum rezultă și din filmuleț, un nod nevizitat are valoarea ucb1
    infinită, și va fi întotdeauna ales în defavoarea altor noduri deja vizitate.
-}
select :: Eq s => Zipper s a -> Zipper s a
select = undefined

{-
    *** TODO ***

    Aplică repetat `select` până la atingerea unui nod nevizitat sau terminal.
-}
traverse :: (Eq s, GameState s a) => Zipper s a -> Zipper s a
traverse = undefined

{-
    *** TODO ***

    Aplică `rolloutTree` pentru arborele pe care este centrat zipper-ul.

    Întoarce:
    * scorul cu care vor fi actualizate nodurile de pe calea către rădăcină
    * numărul jucătorului pentru care se realizează actualizarea
      (se poate ignora pentru cerința cu un singur jucător)
    * noul zipper, actualizat cu generatorul de numere aleatoare întors
      de `rolloutTree`.

    Pentru cerința cu cel puțin doi jucători, scorul și numărul jucătorului
    se calculează astfel:
    * Pentru victorie, se utilizează scorul din obictul `Outcome` și numărul
      jucătorului aferent stării terminale.
    * Pentru remiză, se utilizează scorul din obiectul `Outcome` împărțit
      la numărul de jucători, și `Nothing`.
-}
rolloutZipper :: GameState s a => Zipper s a -> (Float, Maybe Int, Zipper s a)
rolloutZipper = undefined

{-
    *** TODO ***

    Urcă un nivel în arbore.
-}
toParent :: Zipper s a -> Zipper s a
toParent = undefined

{-
    *** TODO ***

    Implementează pasul de backpropagation, unde cei trei parametri sunt cele
    trei componente întoarse de `rolloutZipper`.

    Astfel, se urmează calea către rădăcină și se crește cu 1 numărul
    de vizitări ale tuturor nodurilor. În plus, scorul se modifică astfel:
    * Pentru cerința cu un singur jucător, se modifică toate nodurile.
    * Pentru cerința cu mai mulți jucători, avem următoarele cazuri:
      * În caz de victorie, se actualizează doar nodurile cu numărul de jucător
        dat de parametru.
      * În caz de remiză, se actualizează toate nodurile.
    
    Zipper-ul final este centrat pe rădăcină.
-}
backProp :: GameState s a => Float -> Maybe Int -> Zipper s a -> Zipper s a
backProp = undefined

{-
    *** TODO ***

    Realizează o iterație completă a MCTS, incluzând toate etapele, pornind
    de la un nod oarecare din arbore și finalizând pe rădăcină.
-}
exploreOne :: (Eq s, GameState s a) => Zipper s a -> Zipper s a
exploreOne = undefined

{-
    *** TODO ***

    Realizează un număr dat de iterații complete ale MCTS.
-}
exploreMany :: (Eq s, GameState s a) => Int -> Zipper s a -> Zipper s a
exploreMany = undefined

{-
    *** TODO ***

    Alege o acțiune pornind de la o stare dată și un număr de iterații ale MCTS.
    Întoarce o pereche cu acțiunea și starea următoare.

    Funcția ar trebui să verifice mai întâi dacă nu cumva una dintre stările
    imediat următoare reprezintă o victorie, caz în care o alege direct.
    Altfel, demarează procesul standard de explorare.

    Atenție! La prima iterație a algoritmului, cu toate că numărul de vizitări
    ale rădăcinii este 0, NU se face rollout la rădăcină, ci se trece direct
    la explorarea copiilor acesteia. Acest lucru este vizibil și în filmuleț.

    După realizarea numărului dat de iterații, se alege efectiv acțiunea,
    utilizând `bestChild`.
-}
choose :: (Eq s, GameState s a) => Int -> s -> StdGen -> (a, s)
choose = undefined
