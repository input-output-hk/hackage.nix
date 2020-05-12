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
      specVersion = "1.10";
      identifier = { name = "yam-transaction-postgresql"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Daniel YU";
      maintainer = "Daniel YU <leptonyu@gmail.com>";
      author = "Daniel YU";
      homepage = "https://github.com/leptonyu/yam/tree/master/yam-transaction-postgresql#readme";
      url = "";
      synopsis = "";
      description = "Transaction Postgresql Plugin";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."yam-app" or (errorHandler.buildDepError "yam-app"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."persistent-postgresql" or (errorHandler.buildDepError "persistent-postgresql"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          ];
        buildable = true;
        };
      };
    }