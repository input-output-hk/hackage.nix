{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "machinecell"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014 Hidenori Azuma";
      maintainer = "Hidenori Azuma <as.capabl@gmail.com>";
      author = "Hidenori Azuma";
      homepage = "";
      url = "";
      synopsis = "Arrow based stream transducers";
      description = "Stream processing library similar to pipe, couduit, machines. With support of arrow combinatins, or the arrow notation. AFRP-like utilities are also available.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."haddock" or ((hsPkgs.pkgs-errors).buildDepError "haddock"))
          (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
          (hsPkgs."profunctors" or ((hsPkgs.pkgs-errors).buildDepError "profunctors"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."profunctors" or ((hsPkgs.pkgs-errors).buildDepError "profunctors"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."machinecell" or ((hsPkgs.pkgs-errors).buildDepError "machinecell"))
            ];
          buildable = true;
          };
        };
      };
    }