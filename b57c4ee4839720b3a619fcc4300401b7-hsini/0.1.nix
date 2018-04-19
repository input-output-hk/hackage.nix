{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hsini";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Magnus Therning, 2010";
        maintainer = "magnus@therning.org";
        author = "Magnus Therning";
        homepage = "";
        url = "";
        synopsis = "Package for user configuration files (INI)";
        description = "None yet";
        buildType = "Custom";
      };
      components = {
        hsini = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.parsec
          ];
        };
        exes = {
          tests = {
            depends  = pkgs.lib.optionals _flags.test [
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-th
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }