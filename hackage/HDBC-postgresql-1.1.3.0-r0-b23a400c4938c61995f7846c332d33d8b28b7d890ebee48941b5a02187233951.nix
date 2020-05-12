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
      identifier = { name = "HDBC-postgresql"; version = "1.1.3.0"; };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) 2005-2007 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "http://software.complete.org/hdbc-postgres";
      url = "";
      synopsis = "PostgreSQL driver for HDBC";
      description = "This package provides a PostgreSQL driver for HDBC";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
        libs = [ (pkgs."pq" or (errorHandler.sysDepError "pq")) ];
        buildable = true;
        };
      };
    }