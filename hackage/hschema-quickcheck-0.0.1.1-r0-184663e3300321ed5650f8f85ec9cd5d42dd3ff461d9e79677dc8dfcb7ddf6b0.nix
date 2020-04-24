{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "hschema-quickcheck"; version = "0.0.1.1"; };
      license = "LGPL-3.0-only";
      copyright = "2018 Antonio Alonso Dominguez";
      maintainer = "alonso.domin@gmail.com";
      author = "Antonio Alonso Dominguez";
      homepage = "https://github.com/alonsodomin/haskell-schema#readme";
      url = "";
      synopsis = "Describe schemas for your Haskell data types.";
      description = "Please see the README on GitHub at <https://github.com/alonsodomin/haskell-schema#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
          (hsPkgs."hschema" or ((hsPkgs.pkgs-errors).buildDepError "hschema"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."natural-transformation" or ((hsPkgs.pkgs-errors).buildDepError "natural-transformation"))
          (hsPkgs."quickcheck-instances" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-instances"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }