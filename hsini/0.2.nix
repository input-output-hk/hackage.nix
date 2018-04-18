{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hsini";
          version = "0.2";
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
        tests = {
          hsini-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.parsec
              hsPkgs.mtl
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