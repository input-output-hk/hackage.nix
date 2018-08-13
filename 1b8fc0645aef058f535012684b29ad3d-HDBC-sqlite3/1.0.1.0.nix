{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "0";
      identifier = {
        name = "HDBC-sqlite3";
        version = "1.0.1.0";
      };
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
      "HDBC-sqlite3" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.HDBC)
        ];
        libs = [ (pkgs.sqlite3) ];
      };
    };
  }