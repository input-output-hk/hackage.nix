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
      specVersion = "2.4";
      identifier = { name = "refractor"; version = "0.0.1.0"; };
      license = "MPL-2.0";
      copyright = "2020 M Farkas-Dyck";
      maintainer = "None";
      author = "M Farkas-Dyck";
      homepage = "https://github.com/strake/refractor.hs";
      url = "";
      synopsis = "See README for more info";
      description = "See README for more info";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
          (hsPkgs."category" or (errorHandler.buildDepError "category"))
          (hsPkgs."hs-functors" or (errorHandler.buildDepError "hs-functors"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
            (hsPkgs."category" or (errorHandler.buildDepError "category"))
            (hsPkgs."hs-functors" or (errorHandler.buildDepError "hs-functors"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."refractor" or (errorHandler.buildDepError "refractor"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
            (hsPkgs."category" or (errorHandler.buildDepError "category"))
            (hsPkgs."hs-functors" or (errorHandler.buildDepError "hs-functors"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            (hsPkgs."refractor" or (errorHandler.buildDepError "refractor"))
            ];
          buildable = true;
          };
        };
      };
    }