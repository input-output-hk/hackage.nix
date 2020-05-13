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
      identifier = { name = "smallcheck"; version = "1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Roman Cheplyaka <roma@ro-che.info>";
      author = "Colin Runciman, Roman Cheplyaka";
      homepage = "https://github.com/feuerbach/smallcheck";
      url = "";
      synopsis = "A property-based testing library";
      description = "SmallCheck is a testing library that allows to verify properties\nfor all test cases up to some depth. The test cases are generated\nautomatically by SmallCheck.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."logict" or (errorHandler.buildDepError "logict"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          ];
        buildable = true;
        };
      };
    }