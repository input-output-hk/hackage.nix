{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hsc3-rec"; version = "0.14.1"; };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape and others, 2008-2013";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://rd.slavepianos.org/?t=hsc3-rec";
      url = "";
      synopsis = "Haskell SuperCollider Record Variants";
      description = "hsc3-rec provides record variants of the\nunit generator constructors at hsc3.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hsc3" or ((hsPkgs.pkgs-errors).buildDepError "hsc3"))
          ];
        buildable = true;
        };
      };
    }