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
      identifier = { name = "ucd"; version = "0.0.1.2"; };
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
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.containers or (pkgs.pkgsBuildBuild.containers or (errorHandler.setupDepError "containers")))
        (hsPkgs.pkgsBuildBuild.directory or (pkgs.pkgsBuildBuild.directory or (errorHandler.setupDepError "directory")))
        (hsPkgs.pkgsBuildBuild.regex-applicative or (pkgs.pkgsBuildBuild.regex-applicative or (errorHandler.setupDepError "regex-applicative")))
        (hsPkgs.pkgsBuildBuild.util or (pkgs.pkgsBuildBuild.util or (errorHandler.setupDepError "util")))
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