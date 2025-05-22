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
    flags = { pedantic = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "imp"; version = "1.0.3.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Taylor Fausak";
      author = "";
      homepage = "";
      url = "";
      synopsis = "A GHC plugin for automatically importing modules.";
      description = "Imp is a GHC plugin for automatically importing modules.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Cabal-syntax" or (errorHandler.buildDepError "Cabal-syntax"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      tests = {
        "imp-test-suite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."imp" or (errorHandler.buildDepError "imp"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }