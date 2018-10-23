{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "direct-sqlite";
        version = "2.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 Irene Knapp";
      maintainer = "ireney.knapp@gmail.com";
      author = "Irene Knapp <ireney.knapp@gmail.com>";
      homepage = "http://ireneknapp.com/software/";
      url = "";
      synopsis = "Low-level binding to SQLite3.  Includes UTF8 and BLOB support.";
      description = "This package is not very different from the other SQLite3 bindings out there, but\nit fixes a few deficiencies I was finding.  It is not as complete as bindings-sqlite3,\nbut is slightly higher-level, in that it supports marshalling of data values to and\nfrom the database.  In particular, it supports strings encoded as UTF8, and BLOBs\nrepresented as ByteStrings.\nVersion 2.0 uses Text for strings instead of String.\nVersion 1.1.0.1 switches to the Faction packaging system and makes no other\nchanges.\nVersion 1.1 adds the SQLite amalgamation file (version 3.7.5) to the project, so that\nthere are no external dependencies.";
      buildType = "Simple";
    };
    components = {
      "direct-sqlite" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.HUnit)
            (hsPkgs.direct-sqlite)
            (hsPkgs.text)
          ];
        };
      };
    };
  }