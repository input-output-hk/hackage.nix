{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "halma-gui";
        version = "0.1.1.0";
      };
      license = "MIT";
      copyright = "2015-2017 Tim Baumann";
      maintainer = "tim@timbaumann.info";
      author = "Tim Baumann";
      homepage = "https://github.com/timjb/halma";
      url = "";
      synopsis = "GTK application for playing Halma";
      description = "Play Halma (aka Chinese Checkers) on your desktop against your friends or an AI";
      buildType = "Simple";
    };
    components = {
      exes = {
        "halma-gui" = {
          depends  = [
            (hsPkgs.halma)
            (hsPkgs.base)
            (hsPkgs.diagrams-gtk)
            (hsPkgs.gtk)
            (hsPkgs.mtl)
            (hsPkgs.diagrams-lib)
            (hsPkgs.diagrams-cairo)
            (hsPkgs.pipes)
            (hsPkgs.mvc)
            (hsPkgs.async)
            (hsPkgs.data-default)
            (hsPkgs.timeit)
          ];
        };
      };
    };
  }