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
      identifier = { name = "hsql-odbc"; version = "1.8.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nick.rudnick@googlemail.com";
      author = "Krasimir Angelov <kr.angelov@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A Haskell Interface to ODBC. ";
      description = "ODBC driver for HSQL.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hsql" or (errorHandler.buildDepError "hsql"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          ];
        libs = [ (pkgs."odbc" or (errorHandler.sysDepError "odbc")) ];
        buildable = true;
        };
      };
    }