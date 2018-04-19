{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "hashring";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael S. Craig <mkscrg@gmail.com>";
        author = "Michael S. Craig <mkscrg@gmail.com>";
        homepage = "https://github.com/mkscrg/hashring";
        url = "";
        synopsis = "Efficient consistent hashing.";
        description = "An efficient implementation of consistent hashing. See the documentation for\n@Data.HashRing@ for more info.";
        buildType = "Simple";
      };
      components = {
        hashring = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.hashable
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.hashring
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }