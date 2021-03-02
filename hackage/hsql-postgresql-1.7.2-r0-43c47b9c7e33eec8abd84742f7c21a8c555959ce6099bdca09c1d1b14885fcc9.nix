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
      identifier = { name = "hsql-postgresql"; version = "1.7.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nick.rudnick@googlemail.com";
      author = "Krasimir Angelov <kr.angelov@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "";
      description = "PostgreSQL driver for HSQL.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hsql" or (errorHandler.buildDepError "hsql"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          ];
        libs = [ (pkgs."pq" or (errorHandler.sysDepError "pq")) ];
        buildable = true;
        };
      };
    }