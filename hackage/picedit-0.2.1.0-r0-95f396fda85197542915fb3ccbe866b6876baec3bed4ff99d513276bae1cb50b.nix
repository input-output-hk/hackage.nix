{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "picedit"; version = "0.2.1.0"; };
      license = "GPL-3.0-only";
      copyright = "2016 Mahdi Dibaiee";
      maintainer = "mdibaiee@aol.com";
      author = "Mahdi Dibaiee";
      homepage = "https://github.com/mdibaiee/picedit#readme";
      url = "";
      synopsis = "simple image manipulation functions";
      description = "Simple set of functions for image manipulation: contrast, brightnesss, rotation, etc.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
          (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "picedit" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."picedit" or ((hsPkgs.pkgs-errors).buildDepError "picedit"))
            (hsPkgs."cli" or ((hsPkgs.pkgs-errors).buildDepError "cli"))
            (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
            ];
          buildable = true;
          };
        };
      };
    }