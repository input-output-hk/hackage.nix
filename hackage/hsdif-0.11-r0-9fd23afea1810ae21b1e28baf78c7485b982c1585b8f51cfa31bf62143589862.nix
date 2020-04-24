{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hsdif"; version = "0.11"; };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape, 2011";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://slavepianos.org/rd/?t=hsdif";
      url = "";
      synopsis = "Haskell SDIF";
      description = "hsdif provides Sound.SDIF, a haskell\nmodule implementing a subset of Sound Description\nInterchange Format.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."hosc" or ((hsPkgs.pkgs-errors).buildDepError "hosc"))
          ];
        buildable = true;
        };
      };
    }