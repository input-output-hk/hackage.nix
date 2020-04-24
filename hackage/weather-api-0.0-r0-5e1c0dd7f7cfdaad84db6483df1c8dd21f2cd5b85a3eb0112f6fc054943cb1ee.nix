{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "weather-api"; version = "0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "peter@standalone.su";
      author = "Peter";
      homepage = "https://github.com/cvb/hs-weather-api.git";
      url = "";
      synopsis = "Weather api implemented in haskell";
      description = "This library implement generic api for retrieving weather\nby http, and has google weather api as example.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."hxt" or ((hsPkgs.pkgs-errors).buildDepError "hxt"))
          (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
          (hsPkgs."resource-pool" or ((hsPkgs.pkgs-errors).buildDepError "resource-pool"))
          ];
        buildable = true;
        };
      };
    }