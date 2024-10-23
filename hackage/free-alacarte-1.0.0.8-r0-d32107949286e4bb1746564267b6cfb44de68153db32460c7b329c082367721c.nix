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
      identifier = { name = "free-alacarte"; version = "1.0.0.8"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "Josep Bigorra <jjbigorra@gmail.com>";
      author = "";
      homepage = "https://github.com/jjba23/free-alacarte";
      url = "";
      synopsis = "Free monads based on intuitions from the Data types à la Carte.             ";
      description = "Free monads based on intuitions from the Data types à la Carte paper. Combine functors and make embedded DSLs in Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "free-alacarte-spec" = {
          depends = [
            (hsPkgs."free-alacarte" or (errorHandler.buildDepError "free-alacarte"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
      };
    };
  }