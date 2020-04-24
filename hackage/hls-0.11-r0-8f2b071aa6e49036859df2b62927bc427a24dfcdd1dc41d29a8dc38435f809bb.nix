{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hls"; version = "0.11"; };
      license = "LicenseRef-GPL";
      copyright = "Rohan Drape, 2006-2011";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://www.slavepianos.org/rd/?t=hls";
      url = "";
      synopsis = "Haskell Lindenmayer Systems";
      description = "Haskell library for generating Lindemayer systems";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."hps" or ((hsPkgs.pkgs-errors).buildDepError "hps"))
          ];
        buildable = true;
        };
      };
    }