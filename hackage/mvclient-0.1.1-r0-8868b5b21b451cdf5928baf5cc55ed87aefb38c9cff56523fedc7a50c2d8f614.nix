{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "mvclient"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "cdsmith@gmail.com";
      author = "Chris Smith";
      homepage = "";
      url = "";
      synopsis = "Client library for metaverse systems like Second Life";
      description = "This implements the client side of connections to virtual world environments\nlike Linden Labs' Second Life or OpenSim (http://opesimulator.org), sometimes\nknown as the \"metaverse\".\n\nBecause of the lack of SSL implementations for Haskell, you currently need\nto set up stunnel for initial login step for worlds (like Second Life) that\nuse secure login pages.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."Crypto" or ((hsPkgs.pkgs-errors).buildDepError "Crypto"))
          (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
          (hsPkgs."maccatcher" or ((hsPkgs.pkgs-errors).buildDepError "maccatcher"))
          (hsPkgs."haxr" or ((hsPkgs.pkgs-errors).buildDepError "haxr"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."network-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "network-bytestring"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."data-binary-ieee754" or ((hsPkgs.pkgs-errors).buildDepError "data-binary-ieee754"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."control-event" or ((hsPkgs.pkgs-errors).buildDepError "control-event"))
          ];
        buildable = true;
        };
      };
    }