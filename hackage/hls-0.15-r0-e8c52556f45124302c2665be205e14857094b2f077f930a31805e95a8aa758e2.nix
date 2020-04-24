{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hls"; version = "0.15"; };
      license = "LicenseRef-GPL";
      copyright = "Rohan Drape, 2006-2014";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://rd.slavepianos.org/t/hls";
      url = "";
      synopsis = "Haskell Lindenmayer Systems";
      description = "Haskell Lindenmayer Systems";
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