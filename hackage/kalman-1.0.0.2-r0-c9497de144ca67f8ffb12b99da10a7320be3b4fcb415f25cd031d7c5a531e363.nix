{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "kalman"; version = "1.0.0.2"; };
      license = "MIT";
      copyright = "Dominic Steinitz, Jacob West";
      maintainer = "dominic@steinitz.org";
      author = "Dominic Steinitz, Jacob West";
      homepage = "https://github.com/idontgetoutmuch/Kalman";
      url = "";
      synopsis = "Kalman and particle filters and smoothers";
      description = "Linear, extended and unscented Kalman filters are provided, along\nwith their corresponding smoothers. Furthermore, a particle filter\nand smoother is provided.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
          (hsPkgs."random-fu" or ((hsPkgs.pkgs-errors).buildDepError "random-fu"))
          (hsPkgs."random-fu-multivariate" or ((hsPkgs.pkgs-errors).buildDepError "random-fu-multivariate"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "kalman-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."kalman" or ((hsPkgs.pkgs-errors).buildDepError "kalman"))
            (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
            (hsPkgs."random-fu" or ((hsPkgs.pkgs-errors).buildDepError "random-fu"))
            (hsPkgs."random-fu-multivariate" or ((hsPkgs.pkgs-errors).buildDepError "random-fu-multivariate"))
            (hsPkgs."Chart" or ((hsPkgs.pkgs-errors).buildDepError "Chart"))
            (hsPkgs."Chart-cairo" or ((hsPkgs.pkgs-errors).buildDepError "Chart-cairo"))
            (hsPkgs."Chart-diagrams" or ((hsPkgs.pkgs-errors).buildDepError "Chart-diagrams"))
            ];
          buildable = true;
          };
        };
      };
    }