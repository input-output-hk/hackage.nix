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
      identifier = { name = "hsql-odbc"; version = "1.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Krasimir Angelov <kr.angelov@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "";
      description = "ODBC driver for HSQL.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hsql" or (errorHandler.buildDepError "hsql"))
          ];
        buildable = true;
        };
      };
    }