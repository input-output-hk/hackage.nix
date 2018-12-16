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
      specVersion = "1.2";
      identifier = {
        name = "ghci-diagrams";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "divip@aszt.inf.elte.hu";
      author = "Péter Diviánszky";
      homepage = "";
      url = "";
      synopsis = "Display simple diagrams from ghci";
      description = "This library provides a simple 2D graphics environment which is used\nin our beginner's Haskell course at ELTE University in Budapest.\n\nExample> draw \$ circle 3";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.diagrams)
          (hsPkgs.cairo)
          (hsPkgs.gtk)
          (hsPkgs.colour)
        ];
      };
    };
  }