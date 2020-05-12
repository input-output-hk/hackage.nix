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
      specVersion = "1.24";
      identifier = { name = "flow-er"; version = "1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "bez@brooklynzelenka.com";
      author = "Brooklyn Zelenka";
      homepage = "https://github.com/expede/flower#README";
      url = "";
      synopsis = "Directional operators to for common combinators";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."flow" or (errorHandler.buildDepError "flow"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."flow" or (errorHandler.buildDepError "flow"))
            (hsPkgs."flow-er" or (errorHandler.buildDepError "flow-er"))
            ];
          buildable = true;
          };
        };
      };
    }