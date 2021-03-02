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
      specVersion = "1.0";
      identifier = { name = "satchmo-minisat"; version = "1.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Johannes Waldmann";
      author = "Johannes Waldmann";
      homepage = "http://dfa.imn.htwk-leipzig.de/satchmo/";
      url = "";
      synopsis = "minisat driver as backend for satchmo";
      description = "this driver calls minisat (download from http://minisat.se/)\nto solve CNF-SAT constraints produced by satchmo";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."satchmo" or (errorHandler.buildDepError "satchmo"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }