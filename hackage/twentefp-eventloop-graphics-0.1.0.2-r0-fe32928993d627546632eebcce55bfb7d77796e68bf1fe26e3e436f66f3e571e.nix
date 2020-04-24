{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "twentefp-eventloop-graphics";
        version = "0.1.0.2";
        };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sebastiaan.la.fleur@gmail.com";
      author = "Sebastiaan la Fleur";
      homepage = "";
      url = "";
      synopsis = "An eventloop based graphical IO system. Used as Lab Assignments Environment at Univeriteit Twente";
      description = "An eventloop based graphical IO system. It uses websockets as a way to communicate with IO devices; a browser in this case. This system is used in the Graphical submodule to be able to express graphical output using the eventloop system for a browser.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."twentefp-websockets" or ((hsPkgs.pkgs-errors).buildDepError "twentefp-websockets"))
          (hsPkgs."twentefp-number" or ((hsPkgs.pkgs-errors).buildDepError "twentefp-number"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          ];
        buildable = true;
        };
      };
    }