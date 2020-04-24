{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.23";
      identifier = { name = "HasCacBDD"; version = "0.1.0.0"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "malvin@w4eg.de";
      author = "Malvin Gattinger";
      homepage = "https://github.com/m4lvin/HasCacBDD";
      url = "";
      synopsis = "Haskell bindings for CacBDD";
      description = "Haskell bindings for CacBDD, a Binary Decision Diagram (BDD) package with dynamic cache management.\nOriginal C++ code from <http://kailesu.net/CacBDD> and a C wrapper are included.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or ((hsPkgs.pkgs-errors).buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or ((hsPkgs.pkgs-errors).buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or ((hsPkgs.pkgs-errors).buildToolDepError "directory")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          ];
        libs = [
          (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
          (pkgs."CacBDD" or ((hsPkgs.pkgs-errors).sysDepError "CacBDD"))
          ];
        buildable = true;
        };
      tests = {
        "example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HasCacBDD" or ((hsPkgs.pkgs-errors).buildDepError "HasCacBDD"))
            ];
          buildable = true;
          };
        "basics" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HasCacBDD" or ((hsPkgs.pkgs-errors).buildDepError "HasCacBDD"))
            ];
          buildable = true;
          };
        "tautologies" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HasCacBDD" or ((hsPkgs.pkgs-errors).buildDepError "HasCacBDD"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }