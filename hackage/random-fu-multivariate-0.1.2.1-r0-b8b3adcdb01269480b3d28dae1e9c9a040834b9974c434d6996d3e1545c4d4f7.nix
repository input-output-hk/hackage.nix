{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "random-fu-multivariate"; version = "0.1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 FP Complete Corporation";
      maintainer = "dominic@steinitz.org";
      author = "Dominic Steinitz, Jacob West";
      homepage = "https://github.com/idontgetoutmuch/random-fu-multivariate";
      url = "";
      synopsis = "Multivariate distributions for random-fu";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."random-fu" or ((hsPkgs.pkgs-errors).buildDepError "random-fu"))
          (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "random-fu-multivariate-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."random-fu-multivariate" or ((hsPkgs.pkgs-errors).buildDepError "random-fu-multivariate"))
            ];
          buildable = true;
          };
        };
      };
    }