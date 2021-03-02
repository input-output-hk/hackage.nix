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
      identifier = { name = "HDBC-sqlite3"; version = "1.0.1.0"; };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) 2005-2006 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "";
      description = "";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
          ];
        libs = [ (pkgs."sqlite3" or (errorHandler.sysDepError "sqlite3")) ];
        buildable = true;
        };
      };
    }