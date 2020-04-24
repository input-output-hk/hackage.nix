{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hs-di"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Milan Nagy";
      maintainer = "123.wizek@gmail.com";
      author = "Milan Nagy";
      homepage = "https://github.com/Wizek/hs-di#readme";
      url = "";
      synopsis = "Dependency Injection library for Haskell";
      description = "Dependency Injection library for Haskell to allow powerful unit testing and mocking (compile-time type-checked)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."compose-ltr" or ((hsPkgs.pkgs-errors).buildDepError "compose-ltr"))
          ];
        buildable = true;
        };
      tests = {
        "hs-di-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hs-di" or ((hsPkgs.pkgs-errors).buildDepError "hs-di"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
            (hsPkgs."compose-ltr" or ((hsPkgs.pkgs-errors).buildDepError "compose-ltr"))
            ];
          buildable = true;
          };
        };
      };
    }