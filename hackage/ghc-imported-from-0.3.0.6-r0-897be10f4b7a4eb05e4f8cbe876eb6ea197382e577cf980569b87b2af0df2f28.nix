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
      specVersion = "1.10";
      identifier = { name = "ghc-imported-from"; version = "0.3.0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "carlo@carlo-hamalainen.net";
      author = "Carlo Hamalainen";
      homepage = "https://github.com/carlohamalainen/ghc-imported-from";
      url = "";
      synopsis = "Find the Haddock documentation for a symbol.";
      description = "Given a Haskell module and symbol, determine the URL to the Haddock documentation\nfor that symbol.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
          (hsPkgs."ghc-syb-utils" or (errorHandler.buildDepError "ghc-syb-utils"))
          (hsPkgs."ghc-mod" or (errorHandler.buildDepError "ghc-mod"))
          (hsPkgs."monad-journal" or (errorHandler.buildDepError "monad-journal"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."process-streaming" or (errorHandler.buildDepError "process-streaming"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."haddock-api" or (errorHandler.buildDepError "haddock-api"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."pipes-transduce" or (errorHandler.buildDepError "pipes-transduce"))
          ] ++ [ (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal")) ];
        buildable = true;
        };
      exes = {
        "fake-ghc-for-ghc-imported-from" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."process-streaming" or (errorHandler.buildDepError "process-streaming"))
            ];
          buildable = true;
          };
        "ghc-imported-from" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."ghc-syb-utils" or (errorHandler.buildDepError "ghc-syb-utils"))
            (hsPkgs."ghc-mod" or (errorHandler.buildDepError "ghc-mod"))
            (hsPkgs."monad-journal" or (errorHandler.buildDepError "monad-journal"))
            (hsPkgs."ghc-imported-from" or (errorHandler.buildDepError "ghc-imported-from"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."process-streaming" or (errorHandler.buildDepError "process-streaming"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."haddock-api" or (errorHandler.buildDepError "haddock-api"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            ] ++ [ (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal")) ];
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."ghc-syb-utils" or (errorHandler.buildDepError "ghc-syb-utils"))
            (hsPkgs."ghc-mod" or (errorHandler.buildDepError "ghc-mod"))
            (hsPkgs."monad-journal" or (errorHandler.buildDepError "monad-journal"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."process-streaming" or (errorHandler.buildDepError "process-streaming"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."haddock-api" or (errorHandler.buildDepError "haddock-api"))
            ] ++ [ (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal")) ];
          buildable = true;
          };
        };
      };
    }