{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      small_base = true;
      containers = true;
      contravariant = true;
      distributive = true;
      comonad = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "semigroupoids-syntax"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2014 NICTA Limited";
      maintainer = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ> <dibblego>";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ> <dibblego>";
      homepage = "https://github.com/NICTA/semigroupoids-syntax";
      url = "";
      synopsis = "RebindableSyntax using the semigroupoids package";
      description = "<<http://i.imgur.com/Ns5hntl.jpg>>\n\nRebindableSyntax using the semigroupoids package";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."semigroupoids" or ((hsPkgs.pkgs-errors).buildDepError "semigroupoids"))
          ] ++ (pkgs.lib).optional (flags.containers) (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))) ++ (pkgs.lib).optional (flags.contravariant) (hsPkgs."contravariant" or ((hsPkgs.pkgs-errors).buildDepError "contravariant"))) ++ (pkgs.lib).optional (flags.distributive) (hsPkgs."distributive" or ((hsPkgs.pkgs-errors).buildDepError "distributive"))) ++ (pkgs.lib).optional (flags.comonad) (hsPkgs."comonad" or ((hsPkgs.pkgs-errors).buildDepError "comonad"));
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        };
      };
    }