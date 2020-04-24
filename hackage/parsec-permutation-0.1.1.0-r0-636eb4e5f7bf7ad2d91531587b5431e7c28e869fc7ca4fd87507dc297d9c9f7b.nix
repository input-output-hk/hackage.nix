{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "parsec-permutation"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Bitbase, LLC";
      maintainer = "samuel@hoffstaetter.com";
      author = "Samuel Hoffstaetter";
      homepage = "";
      url = "";
      synopsis = "Applicative permutation parser for Parsec intended as\na replacement for Text.Parsec.Perm.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."parsec-permutation" or ((hsPkgs.pkgs-errors).buildDepError "parsec-permutation"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }