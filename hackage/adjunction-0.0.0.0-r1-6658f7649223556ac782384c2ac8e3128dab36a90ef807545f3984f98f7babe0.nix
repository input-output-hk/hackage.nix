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
      identifier = { name = "adjunction"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 M Farkas-Dyck";
      maintainer = "None";
      author = "M Farkas-Dyck";
      homepage = "https://github.com/strake/adjunction.hs";
      url = "";
      synopsis = "See README for more info";
      description = "See README for more info";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hs-functors" or (errorHandler.buildDepError "hs-functors"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hs-functors" or (errorHandler.buildDepError "hs-functors"))
            (hsPkgs."adjunction" or (errorHandler.buildDepError "adjunction"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hs-functors" or (errorHandler.buildDepError "hs-functors"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            (hsPkgs."adjunction" or (errorHandler.buildDepError "adjunction"))
            ];
          buildable = true;
          };
        };
      };
    }