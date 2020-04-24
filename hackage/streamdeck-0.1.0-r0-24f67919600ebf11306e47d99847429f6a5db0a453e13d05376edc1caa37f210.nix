{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "streamdeck"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2018-2019 Tina Wuest";
      maintainer = "tina@wuest.me";
      author = "Tina Wuest";
      homepage = "https://github.com/wuest/haskell-streamdeck";
      url = "";
      synopsis = "Control library for the Elgato Stream Deck";
      description = "Support (via System.HIDAPI) for Elgato Stream Deck hardware";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hidapi" or ((hsPkgs.pkgs-errors).buildDepError "hidapi"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          ];
        buildable = true;
        };
      };
    }