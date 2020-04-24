{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { debug = false; };
    package = {
      specVersion = "1.4";
      identifier = { name = "uni-graphs"; version = "2.2.1.1"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "chr.maeder@web.de";
      author = "uniform@informatik.uni-bremen.de";
      homepage = "http://www.informatik.uni-bremen.de/uniform/wb/";
      url = "";
      synopsis = "Graphs";
      description = "Graphs toolkit";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."uni-util" or ((hsPkgs.pkgs-errors).buildDepError "uni-util"))
          (hsPkgs."uni-events" or ((hsPkgs.pkgs-errors).buildDepError "uni-events"))
          (hsPkgs."uni-reactor" or ((hsPkgs.pkgs-errors).buildDepError "uni-reactor"))
          (hsPkgs."uni-htk" or ((hsPkgs.pkgs-errors).buildDepError "uni-htk"))
          ];
        buildable = true;
        };
      };
    }