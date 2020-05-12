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
      specVersion = "0";
      identifier = { name = "satchmo-funsat"; version = "1.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Johannes Waldmann";
      author = "Johannes Waldmann";
      homepage = "http://dfa.imn.htwk-leipzig.de/satchmo/";
      url = "";
      synopsis = "funsat driver as backend for satchmo";
      description = "this driver calls funsat (download from hackage)\nto solve CNF-SAT constraints produced by satchmo";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."satchmo" or (errorHandler.buildDepError "satchmo"))
          (hsPkgs."funsat" or (errorHandler.buildDepError "funsat"))
          (hsPkgs."parse-dimacs" or (errorHandler.buildDepError "parse-dimacs"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        buildable = true;
        };
      };
    }