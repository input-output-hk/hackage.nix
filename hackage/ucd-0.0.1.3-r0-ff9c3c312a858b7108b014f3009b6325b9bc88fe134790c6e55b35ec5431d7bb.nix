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
      identifier = { name = "ucd"; version = "0.0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "2019 M Farkas-Dyck";
      maintainer = "strake888@gmail.com";
      author = "M Farkas-Dyck";
      homepage = "https://github.com/strake/ucd.hs";
      url = "";
      synopsis = "Unicode Character Database — Predicates on characters specified by Unicode";
      description = "";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.containers or (pkgs.buildPackages.containers or (errorHandler.setupDepError "containers")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or (errorHandler.setupDepError "directory")))
        (hsPkgs.buildPackages.regex-applicative or (pkgs.buildPackages.regex-applicative or (errorHandler.setupDepError "regex-applicative")))
        (hsPkgs.buildPackages.util or (pkgs.buildPackages.util or (errorHandler.setupDepError "util")))
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