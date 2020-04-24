{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "time-io-access"; version = "0.1.0.0"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "bheklilr2@gmail.com";
      author = "Aaron Stevens";
      homepage = "";
      url = "";
      synopsis = "IO Access for time";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."base-io-access" or ((hsPkgs.pkgs-errors).buildDepError "base-io-access"))
          ];
        buildable = true;
        };
      };
    }