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
      specVersion = "1.6";
      identifier = { name = "direct-sqlite"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2009 Dan Knapp";
      maintainer = "dankna@gmail.com";
      author = "Dan Knapp";
      homepage = "http://www.dankna.com/software/";
      url = "";
      synopsis = "Low-level binding to SQLite3.  Includes UTF8 and BLOB support.";
      description = "This package is not very different from the other SQLite3 bindings out there, but\nit fixes a few deficiencies I was finding.  It is not as complete as bindings-sqlite3,\nbut is slightly higher-level, in that it supports marshalling of data values to and\nfrom the database.  In particular, it supports strings encoded as UTF8, and BLOBs\nrepresented as ByteStrings.\nVersion 1.1 adds the SQLite amalgamation file (version 3.7.5) to the project, so that\nthere are no external dependencies.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      };
    }