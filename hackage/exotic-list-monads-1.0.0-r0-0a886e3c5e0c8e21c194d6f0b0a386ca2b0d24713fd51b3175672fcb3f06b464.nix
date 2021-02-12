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
      identifier = { name = "exotic-list-monads"; version = "1.0.0"; };
      license = "MIT";
      copyright = "(c) 2020 Dylan McDermott, Maciej Piróg, Tarmo Uustalu";
      maintainer = "Maciej Piróg <maciej.adam.pirog@gmail.com>";
      author = "Maciej Piróg <maciej.adam.pirog@gmial.com>";
      homepage = "http://github.com/maciejpirog/exotic-list-monads";
      url = "";
      synopsis = "Non-standard monads on lists and non-empty lists";
      description = "The usual list monad is only one of infinitely many ways to turn the list functor into a monad. The same applies to the usual non-empty list monad and the non-empty list functor. This library collects such non-standard \"list\" and \"non-empty list\" monads.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."exotic-list-monads" or (errorHandler.buildDepError "exotic-list-monads"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }