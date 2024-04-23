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
      specVersion = "1.18";
      identifier = { name = "typenums"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "2018 Iris Ward";
      maintainer = "aditu.venyhandottir@gmail.com";
      author = "AdituV";
      homepage = "https://github.com/adituv/typenums#readme";
      url = "";
      synopsis = "Type level numbers using existing Nat functionality";
      description = "Type level numbers using existing Nat functionality. Uses kind-polymorphic typeclasses and type families to facilitate more general code compatible with existing code using type-level Naturals.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "typenums-tests" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."typenums" or (errorHandler.buildDepError "typenums"))
          ];
          buildable = true;
        };
      };
    };
  }