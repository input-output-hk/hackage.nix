{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "direct-sqlite"; version = "2.0"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base16-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base16-bytestring"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."direct-sqlite" or ((hsPkgs.pkgs-errors).buildDepError "direct-sqlite"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }