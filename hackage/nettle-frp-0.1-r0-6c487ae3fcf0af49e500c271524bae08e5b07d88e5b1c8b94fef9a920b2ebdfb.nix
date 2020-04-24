{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "nettle-frp"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "andreas.voellmy@yale.edu";
      author = "Andreas Voellmy, Daniel Rozycki, Kwabene Antwi-Boasiako";
      homepage = "";
      url = "";
      synopsis = "FRP for controlling networks of OpenFlow switches.";
      description = "This module provides an FRP-based framework for controlling OpenFlow switches.\nThe library is under active development and should still be considered experimental.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."nettle-openflow" or ((hsPkgs.pkgs-errors).buildDepError "nettle-openflow"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."bimap" or ((hsPkgs.pkgs-errors).buildDepError "bimap"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          (hsPkgs."network-data" or ((hsPkgs.pkgs-errors).buildDepError "network-data"))
          ];
        buildable = true;
        };
      };
    }