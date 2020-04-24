{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "uni-uDrawGraph"; version = "2.2.1.3"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "c.maeder@jacobs-university.de";
      author = "uniform@informatik.uni-bremen.de";
      homepage = "http://www.informatik.uni-bremen.de/uniform/wb";
      url = "";
      synopsis = "Graphs binding";
      description = "Binding to uDrawGraph (formerly daVinci)\n<http://www.informatik.uni-bremen.de/uDrawGraph/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."uni-util" or ((hsPkgs.pkgs-errors).buildDepError "uni-util"))
          (hsPkgs."uni-events" or ((hsPkgs.pkgs-errors).buildDepError "uni-events"))
          (hsPkgs."uni-posixutil" or ((hsPkgs.pkgs-errors).buildDepError "uni-posixutil"))
          (hsPkgs."uni-reactor" or ((hsPkgs.pkgs-errors).buildDepError "uni-reactor"))
          (hsPkgs."uni-graphs" or ((hsPkgs.pkgs-errors).buildDepError "uni-graphs"))
          ];
        buildable = true;
        };
      };
    }