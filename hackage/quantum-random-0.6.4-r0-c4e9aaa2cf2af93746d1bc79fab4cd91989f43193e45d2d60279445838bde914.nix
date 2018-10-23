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
        name = "quantum-random";
        version = "0.6.4";
      };
      license = "MIT";
      copyright = "2016";
      maintainer = "cs.hbar+hs@gmail.com";
      author = "Cliff Harvey";
      homepage = "http://github.com/BlackBrane/quantum-random/";
      url = "";
      synopsis = "Retrieve, store and manage real quantum random data.";
      description = "Retrieve, store and manage real quantum random data, originating from vacuum\nfluctuations of the electromagnetic field and served by Australian National\nUniversity.\n\nThe package is designed to ensure quantum random data is promptly available for\nyour application by keeping a sufficient amount locally. When depleted to a\nspecified level, more data is downloaded concurrently over SSL. It can be\nconfigured by specifying the minimum store size (below which more data are\nretrieved) the target store size (the size of the store after retrieval) and\nthe default display style.\n\nFor more information on the API service on which this package is based,\nvisit the ANU QRN webpage at <http://qrng.anu.edu.au/>.";
      buildType = "Simple";
    };
    components = {
      "quantum-random" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ansigraph)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.http-conduit)
          (hsPkgs.ansi-terminal)
          (hsPkgs.terminal-size)
          (hsPkgs.directory)
        ];
      };
      exes = {
        "qrand" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskeline)
            (hsPkgs.mtl)
            (hsPkgs.quantum-random)
          ];
        };
      };
      tests = {
        "test-quantum-random" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.quantum-random)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }