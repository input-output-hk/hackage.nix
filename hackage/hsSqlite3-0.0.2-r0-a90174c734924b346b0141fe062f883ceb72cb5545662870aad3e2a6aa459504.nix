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
      identifier = { name = "hsSqlite3"; version = "0.0.2"; };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) 2007 Evgeny Jukov";
      maintainer = "Evgeny Jukov <masloed@gmail.com>";
      author = "Evgeny Jukov";
      homepage = "http://macode.sourceforge.net";
      url = "";
      synopsis = "Sqlite3 bindings";
      description = "Bindings for Sqlite3";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."stateLocal" or (errorHandler.buildDepError "stateLocal"))
          ];
        buildable = true;
        };
      exes = {
        "hs_sqlite3_test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."stateLocal" or (errorHandler.buildDepError "stateLocal"))
            ];
          libs = [ (pkgs."sqlite3" or (errorHandler.sysDepError "sqlite3")) ];
          buildable = true;
          };
        };
      };
    }