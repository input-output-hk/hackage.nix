{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "HDBC-sqlite3";
        version = "1.1.3.1";
      };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) 2005-2007 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "http://software.complete.org/hdbc-sqlite3";
      url = "";
      synopsis = "Sqlite v3 driver for HDBC";
      description = "This is the Sqlite v3 driver for HDBC, the generic\ndatabase access system for Haskell";
      buildType = "Custom";
    };
    components = {
      "HDBC-sqlite3" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.HDBC)
        ];
        libs = [ (pkgs."sqlite3") ];
      };
    };
  }