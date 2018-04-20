{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hapstone";
          version = "0.2.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Inokentiy Babushkin";
        maintainer = "inokentiy.babushkin@googlemail.com";
        author = "Inokentiy Babushkin";
        homepage = "http://github.com/ibabushkin/hapstone";
        url = "";
        synopsis = "Capstone bindings for Haskell";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        hapstone = {
          depends  = [ hsPkgs.base ];
          libs = [ pkgs.capstone ];
        };
        tests = {
          hapstone-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hapstone
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
            ];
          };
        };
      };
    }