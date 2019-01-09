{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "haskell-in-space"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gwern Branwen <gwern0@gmail.com>";
      author = "Christoph Lueth <christoph.lueth@dfki.de>, University of Bremen students";
      homepage = "http://www.informatik.uni-bremen.de/~cxl/lehre/pi3.ws01/asteroids/";
      url = "";
      synopsis = "'Asteroids' arcade games.";
      description = "A collection of clones of the arcade game 'Asteroids'.\nThere are two demos for moving around ('asteroids-space', 'asteroids-aufgabe');\nthere is a basic Asteroids game ('asteroids-basic'); and then there is a full\nelaborate one ('asteroids-haskelly').";
      buildType = "Simple";
      };
    components = {
      exes = {
        "asteroids-space" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.random)
            (hsPkgs.HGL)
            ];
          };
        "asteroids-aufgabe" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.random)
            (hsPkgs.HGL)
            ];
          };
        "asteroids-basic" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.random)
            (hsPkgs.HGL)
            ];
          };
        "asteroids-haskelly" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.random)
            (hsPkgs.HGL)
            ];
          };
        };
      };
    }