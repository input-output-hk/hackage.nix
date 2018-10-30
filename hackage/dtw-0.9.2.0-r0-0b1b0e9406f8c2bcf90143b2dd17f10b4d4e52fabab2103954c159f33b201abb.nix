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
        name = "dtw";
        version = "0.9.2.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "fho@f12n.de";
      author = "Florian Hofmann";
      homepage = "";
      url = "";
      synopsis = "(Fast) Dynamic Time Warping";
      description = "This package implements dynamic time warping as described\nhere http://en.wikipedia.org/w/index.php?title=Dynamic_time_warping&oldid=643501828";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.vector-space)
          (hsPkgs.containers)
          (hsPkgs.MemoTrie)
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
            (hsPkgs.MemoTrie)
          ];
        };
      };
    };
  }