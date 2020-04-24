{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "comonad-random"; version = "0.1.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Jake.McArthur@gmail.com";
      author = "Jake McArthur";
      homepage = "";
      url = "";
      synopsis = "Comonadic interface for random values";
      description = "Comonadic interface for random values";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."category-extras" or ((hsPkgs.pkgs-errors).buildDepError "category-extras"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          ];
        buildable = true;
        };
      };
    }