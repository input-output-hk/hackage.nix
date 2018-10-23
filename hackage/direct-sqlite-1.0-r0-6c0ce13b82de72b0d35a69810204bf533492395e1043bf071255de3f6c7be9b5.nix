{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "direct-sqlite";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2009 Dan Knapp";
      maintainer = "dankna@gmail.com";
      author = "Dan Knapp";
      homepage = "http://www.dankna.com/software/";
      url = "";
      synopsis = "Low-level binding to SQLite3.  Includes UTF8 and BLOB support.";
      description = "This package is not very different from the other SQLite3 bindings out there, but\nit fixes a few deficiencies I was finding.  It is not as complete as bindings-sqlite3,\nbut is slightly higher-level, in that it supports marshalling of data values to and\nfrom the database.  In particular, it supports strings encoded as UTF8, and BLOBs\nrepresented as ByteStrings.";
      buildType = "Simple";
    };
    components = {
      "direct-sqlite" = {
        depends  = [
          (hsPkgs.bytestring)
          (hsPkgs.base)
          (hsPkgs.utf8-string)
        ];
      };
    };
  }