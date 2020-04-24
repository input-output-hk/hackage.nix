{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gridbounds"; version = "0.0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "firas@zaidan.de";
      author = "Firas Zaidan";
      homepage = "https://github.com/zaidan/gridbounds#readme";
      url = "";
      synopsis = "Collision detection for GridBox";
      description = "This package adds collision detection to GridBox. It is based on Earclipper and GJK.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."gridbox" or ((hsPkgs.pkgs-errors).buildDepError "gridbox"))
          (hsPkgs."earclipper" or ((hsPkgs.pkgs-errors).buildDepError "earclipper"))
          (hsPkgs."gjk" or ((hsPkgs.pkgs-errors).buildDepError "gjk"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gridbox" or ((hsPkgs.pkgs-errors).buildDepError "gridbox"))
            (hsPkgs."earclipper" or ((hsPkgs.pkgs-errors).buildDepError "earclipper"))
            (hsPkgs."gjk" or ((hsPkgs.pkgs-errors).buildDepError "gjk"))
            (hsPkgs."gridbounds" or ((hsPkgs.pkgs-errors).buildDepError "gridbounds"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }