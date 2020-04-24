{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "halma-gui"; version = "0.1.1.1"; };
      license = "MIT";
      copyright = "2015-2019 Tim Baumann";
      maintainer = "tim@timbaumann.info";
      author = "Tim Baumann";
      homepage = "https://github.com/timjb/halma";
      url = "";
      synopsis = "GTK application for playing Halma";
      description = "Play Halma (aka Chinese Checkers) on your desktop against your friends or an AI";
      buildType = "Simple";
      };
    components = {
      exes = {
        "halma-gui" = {
          depends = [
            (hsPkgs."halma" or ((hsPkgs.pkgs-errors).buildDepError "halma"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."diagrams-gtk" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-gtk"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."diagrams-lib" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-lib"))
            (hsPkgs."diagrams-cairo" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-cairo"))
            (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
            (hsPkgs."mvc" or ((hsPkgs.pkgs-errors).buildDepError "mvc"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."timeit" or ((hsPkgs.pkgs-errors).buildDepError "timeit"))
            ];
          buildable = true;
          };
        };
      };
    }