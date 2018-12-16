{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { systemlib = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "direct-sqlite";
        version = "2.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 Irene Knapp";
      maintainer = "ireney.knapp@gmail.com";
      author = "Irene Knapp <ireney.knapp@gmail.com>";
      homepage = "http://ireneknapp.com/software/";
      url = "";
      synopsis = "Low-level binding to SQLite3.  Includes UTF8 and BLOB support.";
      description = "This package is not very different from the other SQLite3 bindings out\nthere, but it fixes a few deficiencies I was finding.  It is not as\ncomplete as bindings-sqlite3, but is slightly higher-level, in that it\nsupports marshalling of data values to and from the database.  In\nparticular, it supports strings encoded as UTF8, and BLOBs represented\nas ByteStrings.\n\nRelease history:\n\n[Version 2.3.1] Upgrade the bundled SQLite3 to 3.7.15.  Add bindings for\nsqlite3_interrupt.  Export Int rather than CInt.\n\n[Version 2.3] Mark some FFI calls \"unsafe\", for a substantial performance\nbenefit.\n\n[Version 2.2.1] Bump down text library version to match with the\nlatest Haskell Platform.\n\n[Version 2.2] actually does what version 2.1 claimed to, since the author\nmade a mistake with git.\n\n[Version 2.1] improves handling of invalid UTF-8 and changes error handling\nto be more complete.  It also adds a build flag to build against the system\nsqlite instead of the bundled one, optionally (disabled by default).\n\n[Version 2.0] uses Text for strings instead of String.\n\n[Version 1.1.0.1] switches to the Faction packaging system and makes no other\nchanges.\n\n[Version 1.1] adds the SQLite amalgamation file (version 3.7.5) to the\nproject, so that there are no external dependencies.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ];
        libs = pkgs.lib.optional (flags.systemlib) (pkgs."sqlite3");
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.HUnit)
            (hsPkgs.direct-sqlite)
            (hsPkgs.text)
          ];
        };
      };
    };
  }