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
      specVersion = "2.2";
      identifier = { name = "reg-alloc-graph-color"; version = "0.0.0.0"; };
      license = "MPL-2.0";
      copyright = "2019 M Farkas-Dyck";
      maintainer = "strake888@gmail.com";
      author = "M Farkas-Dyck";
      homepage = "";
      url = "";
      synopsis = "Register allocation by graph colorization";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."reg-alloc-graph-color".components.sublibs.private or (errorHandler.buildDepError "reg-alloc-graph-color:private"))
        ];
        buildable = true;
      };
      sublibs = {
        "private" = {
          depends = [
            (hsPkgs."Map" or (errorHandler.buildDepError "Map"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."lenz" or (errorHandler.buildDepError "lenz"))
            (hsPkgs."lenz-mtl" or (errorHandler.buildDepError "lenz-mtl"))
            (hsPkgs."lenz-template" or (errorHandler.buildDepError "lenz-template"))
            (hsPkgs."microlens-mtl" or (errorHandler.buildDepError "microlens-mtl"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."peano" or (errorHandler.buildDepError "peano"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."util" or (errorHandler.buildDepError "util"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."logict" or (errorHandler.buildDepError "logict"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-smallcheck" or (errorHandler.buildDepError "tasty-smallcheck"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."util" or (errorHandler.buildDepError "util"))
            (hsPkgs."reg-alloc-graph-color".components.sublibs.private or (errorHandler.buildDepError "reg-alloc-graph-color:private"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."reg-alloc-graph-color" or (errorHandler.buildDepError "reg-alloc-graph-color"))
          ];
          buildable = true;
        };
      };
    };
  }