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
      specVersion = "1.8";
      identifier = { name = "qudb"; version = "0.0.1"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "Jan Stępień";
      author = "Piotr Monarski, Jan Stępień";
      homepage = "https://github.com/jstepien/qudb";
      url = "";
      synopsis = "Quite Useless DB";
      description = "QUDB is a simple relational database meant to be a Haskell equivalent of\nthe SQLite executable. It currently supports a minimal subset of SQL. See the\n`test` directory for examples of accepted queries.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "qudb" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."snappy" or (errorHandler.buildDepError "snappy"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy")))
            (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex")))
            ];
          buildable = true;
          };
        };
      };
    }