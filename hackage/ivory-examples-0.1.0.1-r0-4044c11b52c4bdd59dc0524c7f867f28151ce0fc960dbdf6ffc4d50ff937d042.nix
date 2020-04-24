{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ivory-examples"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2013 Galois, Inc.";
      maintainer = "trevor@galois.com";
      author = "Galois, Inc";
      homepage = "http://smaccmpilot.org/languages/ivory-introduction.html";
      url = "";
      synopsis = "Ivory examples.";
      description = "Various examples demonstrating the use of Ivory.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ivory-fibtutorial" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."monadLib" or ((hsPkgs.pkgs-errors).buildDepError "monadLib"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."mainland-pretty" or ((hsPkgs.pkgs-errors).buildDepError "mainland-pretty"))
            (hsPkgs."wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "wl-pprint"))
            (hsPkgs."ivory" or ((hsPkgs.pkgs-errors).buildDepError "ivory"))
            (hsPkgs."ivory-opts" or ((hsPkgs.pkgs-errors).buildDepError "ivory-opts"))
            (hsPkgs."ivory-backend-c" or ((hsPkgs.pkgs-errors).buildDepError "ivory-backend-c"))
            (hsPkgs."ivory-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "ivory-quickcheck"))
            (hsPkgs."ivory-stdlib" or ((hsPkgs.pkgs-errors).buildDepError "ivory-stdlib"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        "ivory-c-clang-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."monadLib" or ((hsPkgs.pkgs-errors).buildDepError "monadLib"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."mainland-pretty" or ((hsPkgs.pkgs-errors).buildDepError "mainland-pretty"))
            (hsPkgs."wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "wl-pprint"))
            (hsPkgs."ivory" or ((hsPkgs.pkgs-errors).buildDepError "ivory"))
            (hsPkgs."ivory-opts" or ((hsPkgs.pkgs-errors).buildDepError "ivory-opts"))
            (hsPkgs."ivory-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "ivory-quickcheck"))
            (hsPkgs."ivory-backend-c" or ((hsPkgs.pkgs-errors).buildDepError "ivory-backend-c"))
            (hsPkgs."ivory-stdlib" or ((hsPkgs.pkgs-errors).buildDepError "ivory-stdlib"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }