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
      identifier = { name = "dnsrbl"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Holden <holden@pigscanfly.ca>";
      author = "Holden Karau <holden@pigscanfly.ca>";
      homepage = "http://www.pigscanfly.ca/~holden/dnsrbl/";
      url = "";
      synopsis = "Asynchronous DNS RBL lookup";
      description = "Asynchronous DNS RBL lookup";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hsdns" or (errorHandler.buildDepError "hsdns"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
        ];
        buildable = true;
      };
    };
  }