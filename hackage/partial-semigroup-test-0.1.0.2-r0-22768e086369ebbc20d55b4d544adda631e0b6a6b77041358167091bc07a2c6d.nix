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
      identifier = { name = "partial-semigroup-test"; version = "0.1.0.2"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin <ch.martin@gmail.com>";
      author = "Chris Martin <ch.martin@gmail.com>";
      homepage = "https://github.com/chris-martin/partial-semigroup#readme";
      url = "";
      synopsis = "Testing utilities for the partial-semigroup package";
      description = "Testing utilities for the partial-semigroup package,\nnotably property testing to check the PartialSemigroup\naxioms.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
          (hsPkgs."partial-semigroup" or (errorHandler.buildDepError "partial-semigroup"))
          ];
        buildable = true;
        };
      };
    }