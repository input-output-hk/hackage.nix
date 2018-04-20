{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "kicad-data";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2014";
        maintainer = "kaspar.emanuel@gmail.com";
        author = "Kaspar Emanuel";
        homepage = "http://github.com/kasbah/haskell-kicad-data";
        url = "";
        synopsis = "Parser and writer for KiCad files.";
        description = "";
        buildType = "Simple";
      };
      components = {
        kicad-data = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.parsec-numbers
            hsPkgs.lens-family
            hsPkgs.ieee754
            hsPkgs.pretty-compact
          ];
        };
        tests = {
          kicad-data-quickcheck = {
            depends  = [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.parsec-numbers
              hsPkgs.lens-family
              hsPkgs.ieee754
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.pretty-compact
              hsPkgs.kicad-data
            ];
          };
        };
      };
    }