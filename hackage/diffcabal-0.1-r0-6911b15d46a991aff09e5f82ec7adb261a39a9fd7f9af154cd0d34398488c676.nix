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
      specVersion = "1.2";
      identifier = { name = "diffcabal"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dons@galois.com";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/diffcabal";
      url = "";
      synopsis = "Diff two .cabal files syntactically";
      description = "Diff two .cabal files syntactically\nThe cabal files may be in the current directly, specified directly, or\nlive on a url far away.\n\nExample:\n\n> \$ diffcabal haskell-platform.cabal http://hackage.haskell.org/platform/2010.1.0.0/haskell-platform.cabal\n> QuickCheck 2.1.1.1 -> 2.1.0.3\n> alex 2.3.3 -> 2.3.2\n> cabal-install 0.8.2 -> 0.8.0\n> cgi 3001.1.7.3 -> 3001.1.7.2\n> fgl 5.4.2.3 -> 5.4.2.2\n> happy 1.18.5 -> 1.18.4\n";
      buildType = "Simple";
      };
    components = {
      exes = {
        "diffcabal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
            ];
          buildable = true;
          };
        };
      };
    }