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
      identifier = { name = "ucd"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 M Farkas-Dyck";
      maintainer = "strake888@gmail.com";
      author = "M Farkas-Dyck";
      homepage = "https://github.com/strake/ucd.hs";
      url = "";
      synopsis = "See README for more info";
      description = "See README for more info";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.buildToolDepError "base")))
        (hsPkgs.buildPackages.containers or (pkgs.buildPackages.containers or (errorHandler.buildToolDepError "containers")))
        (hsPkgs.buildPackages.regex-applicative or (pkgs.buildPackages.regex-applicative or (errorHandler.buildToolDepError "regex-applicative")))
        (hsPkgs.buildPackages.util or (pkgs.buildPackages.util or (errorHandler.buildToolDepError "util")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."util" or (errorHandler.buildDepError "util"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."util" or (errorHandler.buildDepError "util"))
            (hsPkgs."ucd" or (errorHandler.buildDepError "ucd"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."util" or (errorHandler.buildDepError "util"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            (hsPkgs."ucd" or (errorHandler.buildDepError "ucd"))
            ];
          buildable = true;
          };
        };
      };
    }