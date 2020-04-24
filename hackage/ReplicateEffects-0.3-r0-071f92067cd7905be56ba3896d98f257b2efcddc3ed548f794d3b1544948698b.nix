{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "ReplicateEffects"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "martijn@van.steenbergen.nl";
      author = "Martijn van Steenbergen, Sjoerd Visscher";
      homepage = "https://github.com/MedeaMelana/ReplicateEffects";
      url = "";
      synopsis = "Composable replication schemes of applicative functors";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }