{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { builtin-sqlcipher = true; };
    package = {
      specVersion = "1.23";
      identifier = { name = "sqlcipher"; version = "1.0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2007-8, Galois Inc\nCopyright (c) 2016, figo GmbH";
      maintainer = "figo GmbH <package+haskell@figo.io>";
      author = "figo GmbH";
      homepage = "http://github.com/figome/haskell-sqlcipher";
      url = "";
      synopsis = "Haskell binding to sqlcipher";
      description = "Haskell binding to sqlcipher <https://www.zetetic.net/sqlcipher/>.\nThis was forked from sqlite3 library from Galois, Inc. since sqlcipher share most of its API.\n";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or ((hsPkgs.pkgs-errors).buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or ((hsPkgs.pkgs-errors).buildToolDepError "Cabal")))
        ];
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
        libs = if flags.builtin-sqlcipher
          then [
            (pkgs."crypto" or ((hsPkgs.pkgs-errors).sysDepError "crypto"))
            ]
          else [
            (pkgs."sqlcipher" or ((hsPkgs.pkgs-errors).sysDepError "sqlcipher"))
            (pkgs."crypto" or ((hsPkgs.pkgs-errors).sysDepError "crypto"))
            ];
        buildable = true;
        };
      tests = {
        "sqlite-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."sqlcipher" or ((hsPkgs.pkgs-errors).buildDepError "sqlcipher"))
            (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }