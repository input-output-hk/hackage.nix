{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; buildtests = false; };
    package = {
      specVersion = "1.2.3";
      identifier = { name = "HDBC-sqlite3"; version = "2.3.3.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2005-2011 John Goerzen";
      maintainer = "Nicolas Wu <nick@well-typed.com>";
      author = "John Goerzen";
      homepage = "http://software.complete.org/hdbc-sqlite3";
      url = "";
      synopsis = "Sqlite v3 driver for HDBC";
      description = "This is the Sqlite v3 driver for HDBC, the generic\ndatabase access system for Haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."HDBC" or ((hsPkgs.pkgs-errors).buildDepError "HDBC"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          ];
        libs = [
          (pkgs."sqlite3" or ((hsPkgs.pkgs-errors).sysDepError "sqlite3"))
          ];
        buildable = true;
        };
      exes = {
        "runtests" = {
          depends = (pkgs.lib).optionals (flags.buildtests) [
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."testpack" or ((hsPkgs.pkgs-errors).buildDepError "testpack"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."convertible" or ((hsPkgs.pkgs-errors).buildDepError "convertible"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            ];
          libs = [
            (pkgs."sqlite3" or ((hsPkgs.pkgs-errors).sysDepError "sqlite3"))
            ];
          buildable = if flags.buildtests then true else false;
          };
        };
      };
    }