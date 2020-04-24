{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "battlenet-yesod"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "teo@nullable.se";
      author = "Teo Klestrup Röijezon";
      homepage = "https://github.com/teozkr/hs-battlenet/";
      url = "";
      synopsis = "Yesod integration for the battlenet package";
      description = "Yesod integration for the battlenet package";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
          (hsPkgs."battlenet" or ((hsPkgs.pkgs-errors).buildDepError "battlenet"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."yesod-core" or ((hsPkgs.pkgs-errors).buildDepError "yesod-core"))
          ];
        buildable = true;
        };
      };
    }