{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { builtin-sqlite3 = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "sqlite"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2007-8, Galois Inc";
      maintainer = "Don Stewart";
      author = "Galois Inc";
      homepage = "";
      url = "";
      synopsis = "Haskell binding to sqlite3";
      description = "Haskell binding to sqlite3 <http://sqlite.org/>.\n";
      buildType = "Configure";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          ];
        libs = (pkgs.lib).optional (!flags.builtin-sqlite3) (pkgs."sqlite3" or ((hsPkgs.pkgs-errors).sysDepError "sqlite3"));
        buildable = true;
        };
      };
    }