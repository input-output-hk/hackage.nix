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
      identifier = { name = "hsql-mysql"; version = "1.8.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Chris Done <chrisdone@gmail.com>";
      author = "Krasimir Angelov <kr.a...@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "MySQL driver for HSQL.";
      description = "MySQL driver for HSQL.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hsql" or (errorHandler.buildDepError "hsql"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          ];
        libs = if system.isWindows || system.isWindows
          then [ (pkgs."libmysql" or (errorHandler.sysDepError "libmysql")) ]
          else [
            (pkgs."mysqlclient" or (errorHandler.sysDepError "mysqlclient"))
            ];
        buildable = true;
        };
      };
    }