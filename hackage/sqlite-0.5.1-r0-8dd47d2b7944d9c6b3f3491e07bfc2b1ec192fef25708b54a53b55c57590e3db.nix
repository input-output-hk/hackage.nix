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
    flags = { builtin-sqlite3 = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "sqlite"; version = "0.5.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2007-8, Galois Inc";
      maintainer = "Adam Wick <awick@uhsure.com>";
      author = "Galois Inc";
      homepage = "";
      url = "";
      synopsis = "Haskell binding to sqlite3";
      description = "Haskell binding to sqlite3 <http://sqlite.org/>.\n";
      buildType = "Configure";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
        libs = (pkgs.lib).optional (!flags.builtin-sqlite3) (pkgs."sqlite3" or (errorHandler.sysDepError "sqlite3"));
        buildable = true;
        };
      };
    }