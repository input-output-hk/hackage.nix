{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hmt"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "Rohan Drape, 2006-2009";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://www.slavepianos.org/rd/";
      url = "";
      synopsis = "Haskell Music Theory";
      description = "Haskell music theory library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."permutation" or ((hsPkgs.pkgs-errors).buildDepError "permutation"))
          ];
        buildable = true;
        };
      };
    }