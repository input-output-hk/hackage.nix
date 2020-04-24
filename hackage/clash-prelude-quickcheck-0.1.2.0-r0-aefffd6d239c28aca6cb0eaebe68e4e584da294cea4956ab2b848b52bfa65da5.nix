{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "clash-prelude-quickcheck"; version = "0.1.2.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Ericson2314@Yahoo.com";
      author = "John Ericson";
      homepage = "";
      url = "";
      synopsis = "QuickCheck instances for various types in the CλaSH Prelude";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."clash-prelude" or ((hsPkgs.pkgs-errors).buildDepError "clash-prelude"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }