{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      systemlib = false;
      fulltextsearch = true;
      urifilenames = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "direct-sqlite";
        version = "2.3.12";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012, 2013 Irene Knapp";
      maintainer = "irene.knapp@icloud.com";
      author = "Irene Knapp <irene.knapp@icloud.com>";
      homepage = "http://ireneknapp.com/software/";
      url = "";
      synopsis = "Low-level binding to SQLite3.  Includes UTF8 and BLOB support.";
      description = "This package is not very different from the other SQLite3 bindings out\nthere, but it fixes a few deficiencies I was finding.  As compared to\nbindings-sqlite3, it is slightly higher-level, in that it supports\nmarshalling of data values to and from the database.  In particular, it\nsupports strings encoded as UTF8, and BLOBs represented as ByteStrings.\n\nRelease history:\n\n[Version 2.3.12] Upgrade bundled SQLite3 to 3.8.4.1.\n\n[Version 2.3.11] Add support for URI filenames, and default to having them on. Among other things, this enables using in-memory databases.\n\n[Version 2.3.10] Add support for compiling the bundled SQLite3 with URI filename support. Specifying flags that would have affected the bundled SQLite3 no longer causes build failure if the \"systemlib\" flag is specified.\n\n[Version 2.3.9] Update bounds on the requirement on the \"text\" library.\n\n[Version 2.3.8] Upgrade bundled SQLite3 to 3.8.1.\n\n[Version 2.3.7] Fix a test failure related to 64-bit math on column indices.\n\n[Version 2.3.6] Re-apply the stat64 hack after upgrade to the bundled\nSQLite3.  Oops!\n\n[Version 2.3.5] Add support to compile bundled SQLite3 with full-text search.  Upgrade bundled SQLite3 to 3.7.17.\n\n[Version 2.3.4] Work around a linker error on some systems; add\ncolumn-name reporting.\n\n[Version 2.3.3.1] Upgrade bundled SQLite3 to 3.7.15.2.\n\n[Version 2.3.3] Add trace support, as a feature for debugging.\n\n[Version 2.3.2] Add execPrint, execWithCallback, and interruptibly functions.\nAdd bindings for sqlite3_last_insert_rowid and sqlite3_changes.  Change the\nShow instance of the Utf8 newtype to better match the IsString instance.\n\n[Version 2.3.1] Upgrade the bundled SQLite3 to 3.7.15.  Add bindings for\nsqlite3_interrupt.  Export Int rather than CInt.\n\n[Version 2.3] Mark some FFI calls \"unsafe\", for a substantial performance\nbenefit.\n\n[Version 2.2.1] Bump down text library version to match with the\nlatest Haskell Platform.\n\n[Version 2.2] actually does what version 2.1 claimed to, since the author\nmade a mistake with git.\n\n[Version 2.1] improves handling of invalid UTF-8 and changes error handling\nto be more complete.  It also adds a build flag to build against the system\nsqlite instead of the bundled one, optionally (disabled by default).\n\n[Version 2.0] uses Text for strings instead of String.\n\n[Version 1.1.0.1] switches to the Faction packaging system and makes no other\nchanges.\n\n[Version 1.1] adds the SQLite amalgamation file (version 3.7.5) to the\nproject, so that there are no external dependencies.";
      buildType = "Simple";
    };
    components = {
      "direct-sqlite" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ];
        libs = if flags.systemlib
          then [ (pkgs."sqlite3") ]
          else pkgs.lib.optional (!system.isWindows) (pkgs."pthread");
      };
      tests = {
        "test" = {
          depends  = [
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