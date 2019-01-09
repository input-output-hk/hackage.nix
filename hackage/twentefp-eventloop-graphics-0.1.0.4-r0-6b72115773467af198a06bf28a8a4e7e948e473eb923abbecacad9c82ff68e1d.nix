{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "twentefp-eventloop-graphics";
        version = "0.1.0.4";
        };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sebastiaan.la.fleur@gmail.com";
      author = "Sebastiaan la Fleur";
      homepage = "";
      url = "";
      synopsis = "Used as Lab Assignments Environment at Univeriteit Twente";
      description = "An eventloop based graphical IO system. It uses websockets as a way to communicate with IO devices; a browser in this case. This system is used in the Graphical submodule to be able to express graphical output using the eventloop system for a browser.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.twentefp-websockets)
          (hsPkgs.twentefp-number)
          (hsPkgs.text)
          (hsPkgs.network)
          ];
        };
      };
    }