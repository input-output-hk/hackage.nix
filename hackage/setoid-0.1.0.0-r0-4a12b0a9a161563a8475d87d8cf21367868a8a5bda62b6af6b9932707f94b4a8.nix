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
      identifier = { name = "setoid"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Global Access Internet Services GmbH";
      maintainer = "kerestey@global.de";
      author = "Pavlo Kerestey";
      homepage = "";
      url = "";
      synopsis = "A Haskell implementation of setoid";
      description = "Setoid (<https://en.wikipedia.org/wiki/Setoid>) is a set equipped with an equivalence relation. Setoid is a useful data structure in cases where equivalence is chosen not to be equality. One can use it to influence the memberships of the elements more strictly, as opposed to sets, and run computations on unions when conflicts between elements are found.\nYou can find more deatails in `Data.Setoid`";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "setoid-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."setoid" or (errorHandler.buildDepError "setoid"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-discover" or (errorHandler.buildDepError "tasty-discover"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-smallcheck" or (errorHandler.buildDepError "tasty-smallcheck"))
            ];
          buildable = true;
          };
        };
      };
    }