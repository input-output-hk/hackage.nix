{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      tests = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "sandi";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Magnus Therning, 2012";
        maintainer = "magnus@therning.org";
        author = "Magnus Therning";
        homepage = "http://hackage.haskell.org/package/sandi";
        url = "";
        synopsis = "Data encoding library";
        description = "Reasonably fast data encoding library.";
        buildType = "Simple";
      };
      components = {
        sandi = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
        exes = {
          tests = {
            depends  = optionals _flags.tests [
              hsPkgs.sandi
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.HUnit
              hsPkgs.test-framework-th
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }