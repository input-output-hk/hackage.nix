{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { systemlib = false; fulltextsearch = true; urifilenames = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "direct-sqlite"; version = "2.3.18"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012, 2013 Irene Knapp";
      maintainer = "Janne Hellsten <jjhellst@gmail.com>";
      author = "Irene Knapp <irene.knapp@icloud.com>";
      homepage = "https://github.com/IreneKnapp/direct-sqlite";
      url = "";
      synopsis = "Low-level binding to SQLite3.  Includes UTF8 and BLOB support.";
      description = "This package is not very different from the other SQLite3 bindings out\nthere, but it fixes a few deficiencies I was finding.  As compared to\nbindings-sqlite3, it is slightly higher-level, in that it supports\nmarshalling of data values to and from the database.  In particular, it\nsupports strings encoded as UTF8, and BLOBs represented as ByteStrings.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        libs = if flags.systemlib
          then [
            (pkgs."sqlite3" or ((hsPkgs.pkgs-errors).sysDepError "sqlite3"))
            ]
          else (pkgs.lib).optional (!system.isWindows) (pkgs."pthread" or ((hsPkgs.pkgs-errors).sysDepError "pthread"));
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base16-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base16-bytestring"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."direct-sqlite" or ((hsPkgs.pkgs-errors).buildDepError "direct-sqlite"))
            (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }