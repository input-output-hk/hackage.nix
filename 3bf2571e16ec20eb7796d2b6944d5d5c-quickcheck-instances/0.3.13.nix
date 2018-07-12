{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "quickcheck-instances";
          version = "0.3.13";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright Antoine Latter, 2012-2014";
        maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        author = "Antoine Latter <aslatter@gmail.com>";
        homepage = "https://github.com/phadej/qc-instances";
        url = "";
        synopsis = "Common quickcheck instances";
        description = "QuickCheck instances.\n\nThe goal is to supply QuickCheck instances for\ntypes provided by the Haskell Platform.\n\nSince all of these instances are provided as\norphans, I recommend that you do not use this library\nwithin another library module, so that you don't\nimpose these instances on down-stream consumers of\nyour code.\n\nFor information on writing a test-suite with Cabal\nsee <https://www.haskell.org/cabal/users-guide/developing-packages.html#test-suites>";
        buildType = "Simple";
      };
      components = {
        "quickcheck-instances" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.containers
            hsPkgs.hashable
            hsPkgs.unordered-containers
            hsPkgs.old-time
            hsPkgs.QuickCheck
            hsPkgs.tagged
            hsPkgs.text
            hsPkgs.time
            hsPkgs.vector
            hsPkgs.scientific
          ];
        };
      };
    }