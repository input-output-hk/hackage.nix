{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "rc"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Bogdan Penkovsky";
      maintainer = "dev () penkovsky dot com";
      author = "Bogdan Penkovsky";
      homepage = "https://github.com/masterdezign/rc#readme";
      url = "";
      synopsis = "Reservoir Computing, fast RNNs";
      description = "Please see the README on Github at <https://github.com/masterdezign/rc#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Learning" or ((hsPkgs.pkgs-errors).buildDepError "Learning"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."dde" or ((hsPkgs.pkgs-errors).buildDepError "dde"))
          (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
          (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "ntc" = {
          depends = [
            (hsPkgs."Learning" or ((hsPkgs.pkgs-errors).buildDepError "Learning"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."dde" or ((hsPkgs.pkgs-errors).buildDepError "dde"))
            (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
            (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."rc" or ((hsPkgs.pkgs-errors).buildDepError "rc"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      tests = {
        "rc-test" = {
          depends = [
            (hsPkgs."Learning" or ((hsPkgs.pkgs-errors).buildDepError "Learning"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."dde" or ((hsPkgs.pkgs-errors).buildDepError "dde"))
            (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
            (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."rc" or ((hsPkgs.pkgs-errors).buildDepError "rc"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }