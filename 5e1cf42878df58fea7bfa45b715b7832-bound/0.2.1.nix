{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "bound";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2012 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/bound/";
        url = "";
        synopsis = "Haskell 98 Locally-Nameless Generalized de Bruijn Terms";
        description = "We represent the target language itself as an ideal monad supplied by the\nuser, and provide a 'Scope' monad transformer for introducing bound variables\nin user supplied terms. Users supply a 'Monad' and 'Traversable' instance, and\nwe traverse to find free variables, and use the Monad to perform substitution\nthat avoids bound variables.\n\nAn untyped lambda calculus:\n\n> import Bound\n> import Prelude.Extras\n\n> infixl 9 :@\n> data Exp a = V a | Exp a :@ Exp a | Lam (Scope () Exp a)\n>  deriving (Eq,Ord,Show,Read,Functor,Foldable,Traversable)\n\n> instance Eq1 Exp   where (==#)      = (==)\n> instance Ord1 Exp  where compare1   = compare\n> instance Show1 Exp where showsPrec1 = showsPrec\n> instance Read1 Exp where readsPrec1 = readsPrec\n> instance Applicative Exp where pure = V; (<*>) = ap\n\n> instance Monad Exp where\n>   return = V\n>   V a      >>= f = f a\n>   (x :@ y) >>= f = (x >>= f) :@ (y >>= f)\n>   Lam e    >>= f = Lam (e >>>= f)\n>\n> lam :: Eq a => a -> Exp a -> Exp a\n> lam v b = Lam (abstract1 v b)\n\n> whnf :: Exp a -> Exp a\n> whnf (f :@ a) = case whnf f of\n>   Lam b -> whnf (instantiate1 a b)\n>   f'    -> f' :@ a\n> whnf e = e\n\nThe classes from Prelude.Extras are used to facilitate the automatic deriving\nof 'Eq', 'Ord', 'Show', and 'Read' in the presence of polymorphic recursion used\ninside 'Scope'.\n\nThe goal of this package is to make it as easy as possible to deal with name\nbinding without forcing an awkward monadic style on the user.\n\nWith generalized de Bruijn term you can 'lift' whole trees instead of just\napplying 'succ' to individual variables, weakening the all variables bound\nby a scope. and by giving binders more structure we can permit easy\nsimultaneous substitution.\n\nThe approach was first elaborated upon by Richard Bird and Ross Patterson\nin \\\"de Bruijn notation as a nested data type\\\", available from\n<http://www.cs.uwyo.edu/~jlc/courses/5000_fall_08/debruijn_as_nested_datatype.pdf>\n\nHowever, the combinators they used required higher rank types. Here we\ndemonstrate that the higher rank @gfold@ combinator they used isn't necessary\nto build the monad and use a monad transformer to encapsulate the novel\nrecursion pattern in their generalized de Bruijn representation. It is named\n'Scope' to match up with the terminology and usage pattern from Conor McBride\nand James McKinna's \\\"I am not a number: I am a free variable\\\", available from\n<http://www.cs.st-andrews.ac.uk/~james/RESEARCH/notanum.pdf>, but since the\nset of variables is visible in the type, we can provide stronger type safety\nguarantees.\n\nThere are longer examples in the @examples/@ folder:\n\n<https://github.com/ekmett/bound/tree/master/examples>\n\n(1) /Simple.hs/ provides an untyped lambda calculus with recursive let bindings.\nand includes an evaluator for the untyped lambda calculus and a longer example\ntaken from Lennart Augustsson's \"λ-calculus cooked four ways\" available from\n<http://www.augustsson.net/Darcs/Lambda/top.pdf>\n\n2. /Derived.hs/ shows how much of the API can be automated with DeriveTraversable\nand adds combinators for building binders that support pattern matching.\n\n3. /Overkill.hs/ provides very strongly typed pattern matching many modern type\nextensions, including polymorphic kinds to ensure type safety. In general,\nthe approach taken by Derived seems to deliver a better power to weight ratio.";
        buildType = "Simple";
      };
      components = {
        bound = {
          depends  = [
            hsPkgs.base
            hsPkgs.bifunctors
            hsPkgs.prelude-extras
            hsPkgs.transformers
          ];
        };
      };
    }