{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "isotope";
          version = "0.4.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "2015 Michael Thomas";
        maintainer = "Michaelt293@gmail.com";
        author = "Michael Thomas";
        homepage = "https://github.com/Michaelt293/Element-isotopes/blob/master/README.md";
        url = "";
        synopsis = "Isotopic masses and relative abundances.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        isotope = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.megaparsec
            hsPkgs.template-haskell
            hsPkgs.th-lift
          ];
        };
        tests = {
          Element-isotopes-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.isotope
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.megaparsec
            ];
          };
        };
      };
    }