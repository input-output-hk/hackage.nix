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
      identifier = { name = "data-lens-ixset"; version = "0.1.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dag.odenhall@gmail.com";
      author = "Dag Odenhall";
      homepage = "https://github.com/dag/data-lens-ixset";
      url = "";
      synopsis = "A Lens for IxSet";
      description = "Integrates Data.IxSet with Data.Lens.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-lens" or (errorHandler.buildDepError "data-lens"))
          (hsPkgs."ixset" or (errorHandler.buildDepError "ixset"))
          ];
        buildable = true;
        };
      tests = {
        "test-data-lens-ixset" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }