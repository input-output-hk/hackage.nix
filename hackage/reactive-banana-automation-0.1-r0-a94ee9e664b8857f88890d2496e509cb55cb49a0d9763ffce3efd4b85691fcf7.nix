{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "reactive-banana-automation";
        version = "0.1";
      };
      license = "AGPL-3.0-only";
      copyright = "2018 Joey Hess";
      maintainer = "Joey Hess <joey@kitenet.net>";
      author = "Joey Hess";
      homepage = "";
      url = "";
      synopsis = "home (etc) automation using reactive-banana";
      description = "Functional Reactive Programming is a natural fit for home automation,\nwhich involves sensor values that vary over time and are used to control\nactuators.\n\nThis library provides a framework and some useful types for\nusing the reactive-banana FRP library for home automation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.reactive-banana)
          (hsPkgs.time)
          (hsPkgs.stm)
        ];
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }