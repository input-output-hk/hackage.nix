{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "toxcore"; version = "0.0.2"; };
      license = "AGPL-3.0-only";
      copyright = "© 2016 iphy";
      maintainer = "iphy";
      author = "iphy";
      homepage = "https://toktok.github.io";
      url = "";
      synopsis = "Haskell bindings to the C reference implementation of Tox";
      description = "Haskell bindings to the C reference implementation of Tox.\n\nSee <https://github.com/TokTok/toxcore>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."bytestring-arbitrary" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-arbitrary"))
          (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
          (hsPkgs."saltine" or ((hsPkgs.pkgs-errors).buildDepError "saltine"))
          ];
        libs = [
          (pkgs."toxcore" or ((hsPkgs.pkgs-errors).sysDepError "toxcore"))
          ];
        buildable = true;
        };
      tests = {
        "testsuite" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."saltine" or ((hsPkgs.pkgs-errors).buildDepError "saltine"))
            (hsPkgs."toxcore" or ((hsPkgs.pkgs-errors).buildDepError "toxcore"))
            ];
          buildable = true;
          };
        };
      };
    }