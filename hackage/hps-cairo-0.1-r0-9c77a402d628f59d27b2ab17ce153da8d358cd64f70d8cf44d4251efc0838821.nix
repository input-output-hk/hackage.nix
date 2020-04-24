{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hps-cairo"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "Rohan Drape, 2006-2009";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://www.slavepianos.org/rd/f/399249/";
      url = "";
      synopsis = "Cairo rendering for haskell postscript library";
      description = "Cairot rendering for the haskell postscript library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
          (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
          (hsPkgs."hps" or ((hsPkgs.pkgs-errors).buildDepError "hps"))
          ];
        buildable = true;
        };
      };
    }