module Graph where

import Data.List

{-
    Următoarele exerciții vor avea drept scop implementarea unei mici biblioteci
    pentru grafuri ORIENTATE.
    După cum știți, există mai multe modalități de reprezentare a unui graf.
    Biblioteca noastră va defini mai multe astfel de reprezentări, precum
    și algoritmi care operează pe grafuri.
    Algoritmii vor fi independenți de reprezentarea internă a grafului - ei
    vor funcționa indiferent de ce structură de date am ales noi pentru un anume
    graf.
    Pentru a obține această genericitate vom abstractiza noțiunea de graf într-o
    clasă care va expune operațiile pe care orice structură de date de tip graf
    ar trebui să le aibă.
-}

-- reprezentăm nodurile ca întregi
type Node = Int

-- reprezentăm arcele ca perechi de noduri
type Arc = (Node, Node)

-------------------------------------------------------------------------------

{-
    1.(1.5p) Analizați clasa Graph definită mai jos și scrieți implementările
    implicite pentru funcțiile din această clasă.

    Clasa Graph definește interfața pentru toate structurile de grafuri
    pe care le vom implementa mai jos.
-}
class Graph g where

    -- Construiește un graf plecând de la o listă de noduri și arcele dintre noduri
    build :: [Node] -> [Arc] -> g

    -- Lista tuturor nodurilor din graf
    nodes :: g -> [Node] -- lista nodurilor din graf

    -- Lista arcelor din graf
    arcs :: g -> [Arc] -- lista muchiilor din graf

    -- Lista nodurilor către care nodul dat ca parametru are un arc
    nodeOut :: g -> Node -> [Node]

    -- Lista nodurilor care au un arc către nodul dat ca parametru
    nodeIn :: g -> Node -> [Node]

    -- Verifică dacă există un arc între două noduri
    arcExists :: g -> Node -> Node -> Bool

    -- implementări implicite: observăm că arcExists și arc sunt
    -- implementate una în funcție de cealaltă, deci e necesară
    -- implementarea a cel puțin uneia din funcții pentru o instanță
    -- minim funcțională.
    arcExists g a b = (a, b) `elem` arcs g
    arcs g = [(i, j) | i <- ns, j <- ns, arcExists g i j] where ns = nodes g
    nodeIn g n = [x | x <- nodes g, arcExists g x n]
    nodeOut g n = [x | x <- nodes g, arcExists g n x]

-------------------------------------------------------------------------------

{-
    2.(2p) Definiți tipul AdjListGraph care reprezintă un graf ca pe o serie de
    perechi (nod, listă vecini). Includeți AdjListGraph în clasa Graph
-}
newtype AdjListGraph = ALGraph [(Node, [Node])] deriving Show

instance Graph AdjListGraph where
    build ns arcs = ALGraph [(node, adjacentNodes node) | node <- ns]
        where adjacentNodes node = [neighbour | (n, neighbour) <- arcs, n == node]

    nodes (ALGraph ps) = map fst ps

    arcs  (ALGraph g) = concatMap (\(node,neighL) -> map (\x -> (node, x)) neighL) g


-------------------------------------------------------------------------------

{-
    3. (1p) Definiți tipul ArcGraph care reprezintă un graf ca o listă de noduri
    și o listă de arce între noduri. Includeți ArcGraph în clasa Graph
-}


data ArcGraph = AGraph [Node] [Arc] deriving (Show)

instance Graph ArcGraph where
    build ns arcs = AGraph ns arcs

    nodes (AGraph ns _) = ns

    arcs (AGraph _ as) = as

-------------------------------------------------------------------------------

{-
    4. (0.5p) Definiți funcția convert care face conversia între
    reprezentări diferite de grafuri.
-}
convert :: (Graph g1, Graph g2) => g1 -> g2
convert g1 = build (nodes g1) (arcs g1)


-------------------------------------------------------------------------------
{-
    O traversare a unui graf este o listă de perechi (nod, Maybe
    părinteNode). Această structură va conține toate nodurile rezultate în
    urma unei parcurgeri a unui graf, în ordinea apariției în parcurgere și
    împreuna cu părintele nodului din parcurgere (Pentru un nod N, părintele
    său este nodul din care s-a ajuns la N în decursul parcurgerii)
-}
type Traversal = [(Node, Maybe Node)]

-- O cale în graf este reprezentată ca listă de noduri din acea cale.
type Path = [Node]

{-
    Definiție pentru algoritmi de parcurgere a unui graf. Un algoritm de
    parcurgere este o funcție care primește un graf și un nod de start și
    întoarce o structură Traversal. Observați că tipul grafului este o
    variabilă de tip - algoritmii trebuie să funcționeze pentru orice
    structură de tip graf.
-}
type TraverseAlgo g = g -> Node -> Traversal

{-
    5. (2.5p) Implementați algoritmul de parcurgere în adâncime. (Depth-First Search)
-}
dfs :: Graph g => TraverseAlgo g
dfs = mkTraversal (++)

{-
    6. (2.5p) Implementați algoritmul de parcurgere în lățime. (Breadth-First Search)
-}
bfs :: Graph g => TraverseAlgo g
bfs = mkTraversal (flip (++))

-- DFS și BFS descriu în principiu același proces - folosesc o structură
-- de date în care sunt ținute nodurile care trebuie parcurse în
-- continuare, precum și o structură cu nodurile vizitate deja. Ceea ce
-- diferă este structura de date (DFS - stiva, BFS - coada). Vom folosi
-- o listă pentru a reprezenta ambele structuri de date - și deci ce
-- variază este modul în care adaugăm nodurile de parcurs - la DFS
-- adăugăm la începutul listei, la BFS la sfârșit.
mkTraversal accumOp g start = iter [(start, Nothing)] []
    where
        iter [] visited = reverse visited
        iter (p@(x, parent):xs) visited
            | any ((==x).fst) visited  = iter xs visited
            | otherwise =
                let additions = [(y, Just x) | y <- nodeOut g x]
                in  iter (accumOp additions xs) (p:visited)


-------------------------------------------------------------------------------

{-
    7. (BONUS 1p) Definiți funcția findPath care primește ca parametri:
    * un algoritm de parcurgere
    * un graf
    * un nod de pornire
    * un nod destinație
    și care întoarce o cale dintre cele două noduri, dacă o astfel de cale
    există.
-}
findPath :: Graph g => TraverseAlgo g -> g -> Node -> Node -> Maybe Path
findPath traverse g n1 n2 = fmap reverse (connect n1 n2)
    where
        traversal = traverse g n1
        connect n1 n2
            | n1 == n2 = Just [n1]
            | otherwise = case lookup n2 traversal of
                Just (Just parent) -> case connect n1 parent of
                                        Just subPath -> Just $ n2 : subPath
                                        Nothing      -> Nothing
                _                  -> Nothing

            {- Varianta monadică:
            | otherwise = do
                Just parent <- lookup n2 traversal
                subPath     <- connect n1 parent
                return (n2 : subPath)
            -}

-------------------------------------------------------------------------------

{-
    8. (BONUS 1p). Creați tipul GenericAdjListGraph care este este similar cu
    AdjListGraph, dar în care nodurile nu sunt neapărat de tip Int - pot
    fi de orice tip.
-}
newtype GenericAdjListGraph a = GALGraph [(a, [a])] deriving Show


{-
    9. (BONUS 1p). Adăugați tipul GenericAdjListGraph la clasa Functor
-}
instance Functor GenericAdjListGraph where
    fmap f (GALGraph ps) = GALGraph [(f x, map f xs) | (x, xs) <- ps]

{-
    10. (BONUS 2p). Definiți clasa Listable pentru containere care conțin elemente
    și care va avea o singură funcție: toList - care întoarce lista elementelor
    conținute în container. Adăugați GenericAdjListGraph la această clasă.
-}

class Listable c where
    toList :: c a -> [a]

instance Listable GenericAdjListGraph where
    toList (GALGraph ps) = map fst ps

