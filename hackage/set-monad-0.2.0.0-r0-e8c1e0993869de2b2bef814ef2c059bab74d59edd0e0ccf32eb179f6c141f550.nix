{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "set-monad";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "giorgidze@gmail.com";
      author = "George Giorgidze";
      homepage = "";
      url = "";
      synopsis = "Set monad";
      description = "The @set-monad@ library exports the @Set@ abstract data type and\nset-manipulating functions. These functions behave exactly as their namesakes\nfrom the @Data.Set@ module of the @containers@ library. In addition, the\n@set-monad@ library extends @Data.Set@ by providing @Functor@, @Applicative@,\n@Alternative@, @Foldable@, @Monad@, and @MonadPlus@ instances for sets.\n\nIn other words, you can use the @set-monad@ library as a drop-in replacement\nfor the @Data.Set@ module of the @containers@ library and, in addition, you\nwill also get the aforementioned instances which are not available in the\n@containers@ package.\n\nIt is not possible to directly implement instances for the aforementioned\nstandard Haskell type classes for the @Set@ data type from the @containers@\nlibrary. This is because the key operations @map@ and @union@, are constrained\nwith @Ord@ as follows.\n\n> map :: (Ord a, Ord b) => (a -> b) -> Set a -> Set b\n> union :: (Ord a) => Set a -> Set a -> Set a\n\nThe @set-monad@ library provides the type class instances by wrapping the\nconstrained @Set@ type into a data type that has unconstrained constructors\ncorresponding to monadic combinators. The data type constructors that\nrepresent monadic combinators are evaluated with a constrained run function.\nThis elevates the need to use the constraints in the instance definitions\n(this is what prevents a direct definition). The wrapping and unwrapping\nhappens internally in the library and does not affect its interface.\n\nFor details, see the rather compact definitions of the @run@ function and\ntype class instances. The left identity and associativity monad laws play a\ncrucial role in the definition of the @run@ function. The rest of the code\nshould be self explanatory.\n\nThe technique is not new. This library was inspired by [1]. To my knowledge,\nthe original, systematic presentation of the idea to represent monadic\ncombinators as data is given in [2]. There is also a Haskell library that\nprovides a generic infrastructure for the aforementioned wrapping and\nunwrapping [3].\n\nThe @set-monad@ library is particularly useful for writing set-oriented code\nusing the do and/or monad comprehension notations. For example, the\nfollowing definitions now type check.\n\n> s1 :: Set (Int,Int)\n> s1 = do a <- fromList [1 .. 4]\n>         b <- fromList [1 .. 4]\n>         return (a,b)\n\n> -- with -XMonadComprehensions\n> s2 :: Set (Int,Int)\n> s2 = [ (a,b) | (a,b) <- s1, even a, even b ]\n\n> s3 :: Set Int\n> s3 = fmap (+1) (fromList [1 .. 4])\n\nAs noted in [1], the implementation technique can be used for monadic\nlibraries and EDSLs with restricted types (compiled EDSLs often restrict the\ntypes that they can handle). Haskell's standard monad type class can be used\nfor restricted monad instances. There is no need to resort to GHC extensions\nthat rebind the standard monadic combinators with the library or EDSL specific\nones.\n\n@[@1@]@ CSDL Blog: The home of applied functional programming at KU. Monad\nReification in Haskell and the Sunroof Javascript compiler.\n<http://www.ittc.ku.edu/csdlblog/?p=88>\n\n@[@2@]@ Chuan-kai Lin. 2006. Programming monads operationally with Unimo. In\nProceedings of the eleventh ACM SIGPLAN International Conference on Functional\nProgramming (ICFP '06). ACM.\n\n@[@3@]@ Heinrich Apfelmus. The operational package.\n<http://hackage.haskell.org/package/operational>";
      buildType = "Simple";
    };
    components = {
      "set-monad" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.containers)
        ];
      };
    };
  }