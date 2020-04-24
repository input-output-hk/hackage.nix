{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "finitary-derive"; version = "1.0.0.0"; };
      license = "GPL-3.0-or-later";
      copyright = "(C) Koz Ross 2019";
      maintainer = "koz.ross@retro-freedom.nz";
      author = "Koz Ross";
      homepage = "https://notabug.org/koz.ross/finitary-derive";
      url = "";
      synopsis = "Easy and efficient Unbox, Storable, Binary and Hashable\ninstances for Finitary types.";
      description = "Provides a wrapper with pre-made instances of Unbox,\nStorable, Binary and Hashable, suitable for use with types that\nhave Finitary instances. Never write Unbox by hand again!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."finitary" or ((hsPkgs.pkgs-errors).buildDepError "finitary"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."coercible-utils" or ((hsPkgs.pkgs-errors).buildDepError "coercible-utils"))
          (hsPkgs."finite-typelits" or ((hsPkgs.pkgs-errors).buildDepError "finite-typelits"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."ghc-typelits-extra" or ((hsPkgs.pkgs-errors).buildDepError "ghc-typelits-extra"))
          (hsPkgs."ghc-typelits-knownnat" or ((hsPkgs.pkgs-errors).buildDepError "ghc-typelits-knownnat"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."vector-sized" or ((hsPkgs.pkgs-errors).buildDepError "vector-sized"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            (hsPkgs."hedgehog-classes" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog-classes"))
            (hsPkgs."finitary-derive" or ((hsPkgs.pkgs-errors).buildDepError "finitary-derive"))
            (hsPkgs."finitary" or ((hsPkgs.pkgs-errors).buildDepError "finitary"))
            (hsPkgs."finite-typelits" or ((hsPkgs.pkgs-errors).buildDepError "finite-typelits"))
            (hsPkgs."monad-loops" or ((hsPkgs.pkgs-errors).buildDepError "monad-loops"))
            ];
          buildable = true;
          };
        };
      };
    }