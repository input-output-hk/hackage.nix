{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "haar";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Amy de Buitléir 2010-2012";
        maintainer = "amy@nualeargais.ie";
        author = "Amy de Buitléir";
        homepage = "https://github.com/mhwombat/haar";
        url = "";
        synopsis = "Haar wavelet transforms";
        description = "A Haar wavelet transform represents a sequence using\nsquare waves as basis vectors.";
        buildType = "Simple";
      };
      components = {
        haar = {
          depends  = [
            hsPkgs.base
            hsPkgs.split
          ];
        };
        tests = {
          haar-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.test-framework-quickcheck2
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.haar
            ];
          };
        };
      };
    }