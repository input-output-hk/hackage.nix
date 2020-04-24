{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { debug = false; };
    package = {
      specVersion = "1.4";
      identifier = { name = "uni-htk"; version = "2.2.1.3"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "chr.maeder@web.de";
      author = "uniform@informatik.uni-bremen.de";
      homepage = "http://www.informatik.uni-bremen.de/htk/";
      url = "";
      synopsis = "Graphical User Interface for Haskell Programs";
      description = "GUI toolkit based on Tcl\\/Tk";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."uni-util" or ((hsPkgs.pkgs-errors).buildDepError "uni-util"))
          (hsPkgs."uni-events" or ((hsPkgs.pkgs-errors).buildDepError "uni-events"))
          (hsPkgs."uni-posixutil" or ((hsPkgs.pkgs-errors).buildDepError "uni-posixutil"))
          (hsPkgs."uni-reactor" or ((hsPkgs.pkgs-errors).buildDepError "uni-reactor"))
          ];
        buildable = true;
        };
      };
    }