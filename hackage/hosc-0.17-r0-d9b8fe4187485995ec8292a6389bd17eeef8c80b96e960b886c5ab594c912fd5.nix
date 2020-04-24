{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hosc"; version = "0.17"; };
      license = "GPL-3.0-only";
      copyright = "(c) Rohan Drape, Stefan Kersten and others, 2007-2018";
      maintainer = "rd@rohandrape.net";
      author = "Rohan Drape, Stefan Kersten";
      homepage = "http://rohandrape.net/t/hosc";
      url = "";
      synopsis = "Haskell Open Sound Control";
      description = "@hosc@ implements a subset of the Open Sound Control\nbyte protocol, <http://opensoundcontrol.org/>.\n\nSee \"Sound.OSC.Core\" or \"Sound.OSC\" or \"Sound.OSC.FD\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."data-binary-ieee754" or ((hsPkgs.pkgs-errors).buildDepError "data-binary-ieee754"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }