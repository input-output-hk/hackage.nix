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
      specVersion = "1.10";
      identifier = {
        name = "diagrams-canvas";
        version = "1.3.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diagrams-discuss@googlegroups.com";
      author = "Jeffrey Rosenbluth, Ryan Yates, Brent Yorgey, Andy Gill, Daniel Bergey";
      homepage = "http://projects.haskell.org/diagrams/";
      url = "";
      synopsis = "HTML5 canvas backend for diagrams drawing EDSL";
      description = "This package provides a modular backend for rendering\ndiagrams created with the diagrams EDSL using an\nHTML5 canvas.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.NumInstances)
          (hsPkgs.diagrams-core)
          (hsPkgs.diagrams-lib)
          (hsPkgs.cmdargs)
          (hsPkgs.blank-canvas)
          (hsPkgs.lens)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.data-default-class)
          (hsPkgs.statestack)
          (hsPkgs.optparse-applicative)
        ];
      };
    };
  }