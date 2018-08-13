{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "dtw";
        version = "1.0.3.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "fho@f12n.de";
      author = "Florian Hofmann";
      homepage = "";
      url = "";
      synopsis = "(Fast) Dynamic Time Warping";
      description = "This package implements dynamic time warping as described\nhere <http://en.wikipedia.org/w/index.php?title=Dynamic_time_warping>";
      buildType = "Simple";
    };
    components = {
      "dtw" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.vector-space)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "maintest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.vector-space)
            (hsPkgs.thyme)
            (hsPkgs.containers)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }