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
    flags = { bench = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "piped"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Scott Sadler";
      maintainer = "example@example.com";
      author = "Scott Sadler";
      homepage = "https://github.com/ssadler/piped#readme";
      url = "";
      synopsis = "Conduit with a smaller core";
      description = "Please see the README on GitHub at <https://github.com/ssadler/piped#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      exes = {
        "piped-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bench-show" or (errorHandler.buildDepError "bench-show"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."piped" or (errorHandler.buildDepError "piped"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            ];
          buildable = if flags.bench then true else false;
          };
        };
      tests = {
        "piped-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            (hsPkgs."microlens-platform" or (errorHandler.buildDepError "microlens-platform"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."piped" or (errorHandler.buildDepError "piped"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-discover" or (errorHandler.buildDepError "tasty-discover"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }