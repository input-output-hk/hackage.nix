{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.14.0";
        identifier = {
          name = "prizm";
          version = "0.3.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2013 Parnell Springmeyer";
        maintainer = "ixmatus@gmail.com";
        author = "Parnell Springmeyer";
        homepage = "https://github.com/ixmatus/prizm";
        url = "http://hackage.haskell.org/package/prizm";
        synopsis = "A haskell library for computing with colors";
        description = "Prizm is a library for converting between\ndifferent color representations and mutating\ncolors (interpolation, lightness, hue, chroma,\ntint/shade).";
        buildType = "Simple";
      };
      components = {
        prizm = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.prizm
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }