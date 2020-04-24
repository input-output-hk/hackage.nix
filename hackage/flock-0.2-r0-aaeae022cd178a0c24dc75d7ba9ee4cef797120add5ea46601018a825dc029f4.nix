{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "flock"; version = "0.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Ian Lynagh, 2007";
      maintainer = "igloo@earth.li";
      author = "Ian Lynagh";
      homepage = "";
      url = "";
      synopsis = "Wrapper for flock(2)";
      description = "Simple wrapper around flock(2).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }