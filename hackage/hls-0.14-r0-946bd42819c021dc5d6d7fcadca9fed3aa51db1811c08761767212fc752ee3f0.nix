{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hls"; version = "0.14"; };
      license = "LicenseRef-GPL";
      copyright = "Rohan Drape, 2006-2013";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://rd.slavepianos.org/?t=hls";
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
          (hsPkgs."hcg-minus" or ((hsPkgs.pkgs-errors).buildDepError "hcg-minus"))
          (hsPkgs."hps" or ((hsPkgs.pkgs-errors).buildDepError "hps"))
          ];
        buildable = true;
        };
      };
    }