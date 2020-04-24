{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "predictive"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2016 Ertugrul Söylemez";
      maintainer = "Ertugrul Söylemez <esz@posteo.de>";
      author = "Ertugrul Söylemez <esz@posteo.de>";
      homepage = "https://github.com/esoeylemez/predictive";
      url = "";
      synopsis = "Predict the future, backtrack on failure";
      description = "This is a library for predictive scans.  Its aim is to\nimprove user experience in cases when user interactions have to be\nacknowledged by a remote host.  It closes the gap between requesting\nthe interaction and the remote end acknowledging it by predicting\nwhat the remote end will decide based on local information.  If the\nprediction is wrong, it automatically backtracks to the last state\nknown to be consistent.\n\nSimple example:  Your application displays a client-side text box,\nbut each edit made to it has to be acknowledged by a server.\nHowever, most of the time the server will acknowledge, so your\napplication can use this library to proceed under this assumption\nand only backtrack, if the server disagrees.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }