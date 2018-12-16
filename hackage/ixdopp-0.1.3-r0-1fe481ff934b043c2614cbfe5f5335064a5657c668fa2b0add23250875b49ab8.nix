{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "ixdopp";
        version = "0.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "2013, Jesse A. Tov";
      maintainer = "tov@eecs.harvard.edu";
      author = "Jesse A. Tov <tov@eecs.harvard.edu>";
      homepage = "http://www.eecs.harvard.edu/~tov/pubs/haskell-session-types/";
      url = "";
      synopsis = "A preprocessor for expanding \"ixdo\" notation for indexed monads";
      description = "This preprocessor expands a Haskell program using \"ixdo\" notation\ninto a Haskell program using the indexed monad bind operator\n(>>>=).  It also serves as an example for the preprocessor-tools\npackage.\n\nWhile GHC 6.10 can now expand do-notation when (>>=) is rebound\nat a non-standard type, this makes it difficult to use\ndo-notation for both monads and custom monad-like structures in\nthe same compilation module.  This preprocessor makes it easy to\nuse do-like syntax for indexed monads while retaining \"do\" for\nmonads.\n\nIf installed in ~/.cabal, then ~/.cabal/bin must be in the path\nfor GHC to find it from a -pgmF flag.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ixdopp" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.syb)
            (hsPkgs.preprocessor-tools)
          ];
        };
      };
    };
  }