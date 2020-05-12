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
      specVersion = "1.6";
      identifier = { name = "HaTeX-meta"; version = "1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Daniel Díaz";
      homepage = "";
      url = "";
      synopsis = "This package is deprecated. From version 3, HaTeX does not need this anymore.";
      description = "Please, note that this package is /deprecated/.\n\nThis packages belongs to the HaTeX project.\nIt builds the @.Monad@ modules.\n\n/Please, note that this version only works with GHC 7.4./";
      buildType = "Simple";
      };
    components = {
      exes = {
        "metahatex" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."haddock" or (errorHandler.buildDepError "haddock"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            ];
          buildable = true;
          };
        };
      };
    }