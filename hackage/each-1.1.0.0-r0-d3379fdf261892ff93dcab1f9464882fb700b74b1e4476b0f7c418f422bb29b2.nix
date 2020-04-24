{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "each"; version = "1.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(C) dramforever <dramforever@live.com>";
      maintainer = "dramforever@live.com";
      author = "dramforever";
      homepage = "https://github.com/dramforever/each#readme";
      url = "";
      synopsis = "Template Haskell library for writing monadic expressions more easily";
      description = "See README at the bottom.\n\n/Getting started/: See \"Each\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."dlist" or ((hsPkgs.pkgs-errors).buildDepError "dlist"))
          ];
        buildable = true;
        };
      tests = {
        "each-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."each" or ((hsPkgs.pkgs-errors).buildDepError "each"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }