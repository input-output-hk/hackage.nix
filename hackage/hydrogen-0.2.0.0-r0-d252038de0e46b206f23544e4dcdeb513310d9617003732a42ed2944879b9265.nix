{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { dev = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hydrogen"; version = "0.2.0.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2013-2015 Karl Voelker";
      maintainer = "hydrogen@karlv.net";
      author = "Karl Voelker";
      homepage = "https://www.github.com/ktvoelker/hydrogen";
      url = "";
      synopsis = "An alternate Prelude";
      description = "This is an alternative to \"Prelude\" that is not meant to depart drastically\nfrom the standard. The principles of Hydrogen are:\n\n1. Be total, not partial.\n2. Use 'Data.Text.Text', not 'Data.String.String'.\n3. Use generic functions, not \"Data.List\" functions.\n4. Whatever is omitted should be replaced.\n\nTo use this package, use the `NoImplicitPrelude` language option, and import\n\"H.Prelude\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."hydrogen" or ((hsPkgs.pkgs-errors).buildDepError "hydrogen"))
            ];
          buildable = true;
          };
        };
      };
    }