{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "shapely-data"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "brandon.m.simmons@gmail.com";
      author = "Brandon Simmons";
      homepage = "http://github.com/jberryman/shapely-data ";
      url = "";
      synopsis = "Generics using @(,)@ and @Either@, with algebraic operations and typed conversions";
      description = "@shapely-data@ is a library for working with algebraic datatypes in a\nsimple generic form made up of haskell's primitive product, sum and unit\ntypes: `(,)`, `Either`, and `()`, providing something like light-weight\nStructural Typing.\n\nThe library was not designed to facilitate generic traversals or\nabstraction over different recursion schemes, but rather to (from most to\nleast important)\n\n- Provide a good story for @(,)@/@Either@ as a /lingua franca/ generic\nrepresentation that other library writers can use without dependencies,\nencouraging abstractions in terms of products and sums\n\n- Support algebraic operations on ADTs, making types composable\n\n- Support powerful, typed conversions between 'Shapely' types\n\n/Influences/\n\nI've taken lots of inspiration, code, names, ideas, and type-level\nprogramming techniques from, in particular\n\n- Oleg Kiselyov's \"HList\" work\n\n- Edward Kmett's \"categories\" package\n\n- Chris Taylor's \"Algebra of Algebraic Datatypes\" series at\n<http://chris-taylor.github.io/blog/2013/02/10/the-algebra-of-algebraic-data-types/>\n\n/Issues and Limitations:/\n\n- 'massage' does not support mutually-recursive types and other more\ncomplicated recursion schemes, nor type application.\n\n- While all classes except 'Shapely' are considered closed, we don't do any\ntricks to enforce that in the API yet.\n\n- In fancier functions that use type equality (e.g. 'coerce'), types need to\nbe unambiguous so type signatures are sometimes required.\n\n- type errors, especially in 'massage' and 'coerce', can be cryptic\n\n- TH deriving hasn't been considered for fancier types like GADTs,\nexistential types, etc. some of which may have sensible Shapely instances\n\n- Performance hasn't been tested at all yet.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."proxy-kindness" or (errorHandler.buildDepError "proxy-kindness"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."proxy-kindness" or (errorHandler.buildDepError "proxy-kindness"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."shapely-data" or (errorHandler.buildDepError "shapely-data"))
            ];
          buildable = true;
          };
        };
      };
    }