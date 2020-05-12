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
      identifier = { name = "smallcheck-kind-generics"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2020 M Farkas-Dyck";
      maintainer = "strake888@gmail.com";
      author = "M Farkas-Dyck";
      homepage = "https://github.com/strake/smallcheck-kind-generics.hs";
      url = "";
      synopsis = "See README for more info";
      description = "See README for more info";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."kind-generics" or (errorHandler.buildDepError "kind-generics"))
          (hsPkgs."kind-generics-th" or (errorHandler.buildDepError "kind-generics-th"))
          (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."smallcheck-kind-generics" or (errorHandler.buildDepError "smallcheck-kind-generics"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            (hsPkgs."smallcheck-kind-generics" or (errorHandler.buildDepError "smallcheck-kind-generics"))
            ];
          buildable = true;
          };
        };
      };
    }