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
      specVersion = "1.12";
      identifier = { name = "ghc-gc-tune"; version = "0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "community";
      author = "Don Stewart";
      homepage = "https://github.com/ulysses4ever/ghc-gc-tune#readme";
      url = "";
      synopsis = "Graph performance of Haskell programs with different GC flags";
      description = "ghc-gc-tune runs your compiled Haskell program with\ndifferent GC flags, and generates a graph of time as\nthose GC settings vary. ghc-gc-tune lets your automate\nthe task of finding good GC flags for your program, in\norder to get the best performance from it.\n\nGraphs are rendered with gnuplot, so make sure that is\ninstalled.\n\nExample use:\n\n> cabal install ghc-gc-tune\n> ghc-gc-tune -t svg binarytrees 12\n\nExample output:\n\n<http://haskell.org/haskellwiki/Ghc-gc-tune>\n\nFor more information on GHC garbage collector settings,\nsee <http://www.haskell.org/ghc/docs/latest/html/users_guide/runtime-control.html#rts-options-gc>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ghc-gc-tune" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          buildable = true;
        };
      };
    };
  }