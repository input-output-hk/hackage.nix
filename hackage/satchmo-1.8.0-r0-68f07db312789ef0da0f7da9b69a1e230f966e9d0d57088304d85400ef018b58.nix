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
      identifier = { name = "satchmo"; version = "1.8.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Johannes Waldmann";
      author = "Pepe Iborra, Johannes Waldmann";
      homepage = "http://dfa.imn.htwk-leipzig.de/satchmo/\nhttp://github.com/pepeiborra/satchmo/";
      url = "";
      synopsis = "SAT encoding monad";
      description = "Encoding for boolean and integral constraints into (QBF-)CNF-SAT.\nThe encoder is provided as a State monad (hence the \"mo\" in \"satchmo\").\nThis package contains functions that construct problems,\nto solve them, you need package satchmo-backends.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
        buildable = true;
        };
      };
    }