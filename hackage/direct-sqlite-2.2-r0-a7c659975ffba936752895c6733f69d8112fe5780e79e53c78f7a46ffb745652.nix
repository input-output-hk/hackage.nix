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
    flags = { systemlib = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "direct-sqlite"; version = "2.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 Irene Knapp";
      maintainer = "ireney.knapp@gmail.com";
      author = "Irene Knapp <ireney.knapp@gmail.com>";
      homepage = "http://ireneknapp.com/software/";
      url = "";
      synopsis = "Low-level binding to SQLite3.  Includes UTF8 and BLOB support.";
      description = "This package is not very different from the other SQLite3 bindings out\nthere, but it fixes a few deficiencies I was finding.  It is not as\ncomplete as bindings-sqlite3, but is slightly higher-level, in that it\nsupports marshalling of data values to and from the database.  In\nparticular, it supports strings encoded as UTF8, and BLOBs represented\nas ByteStrings.\n\nRelease history:\n\n[Version 2.2] actually does what version 2.1 claimed to, since the author\nmade a mistake with git.\n\n[Version 2.1] improves handling of invalid UTF-8 and changes error handling\nto be more complete.  It also adds a build flag to build against the system\nsqlite instead of the bundled one, optionally (disabled by default).\n\n[Version 2.0] uses Text for strings instead of String.\n\n[Version 1.1.0.1] switches to the Faction packaging system and makes no other\nchanges.\n\n[Version 1.1] adds the SQLite amalgamation file (version 3.7.5) to the\nproject, so that there are no external dependencies.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        libs = (pkgs.lib).optional (flags.systemlib) (pkgs."sqlite3" or (errorHandler.sysDepError "sqlite3"));
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."direct-sqlite" or (errorHandler.buildDepError "direct-sqlite"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }