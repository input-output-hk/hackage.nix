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
      specVersion = "1.6";
      identifier = { name = "hsql-mysql"; version = "1.7.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Chris Done <chrisdone@gmail.com>";
      author = "Krasimir Angelov <kr.a...@gmail.com> ";
      homepage = "";
      url = "";
      synopsis = "MySQL driver for HSQL.";
      description = "MySQL driver for HSQL. ";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hsql" or (errorHandler.buildDepError "hsql"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
        ];
        libs = [
          (pkgs."mysqlclient" or (errorHandler.sysDepError "mysqlclient"))
        ];
        buildable = true;
      };
    };
  }