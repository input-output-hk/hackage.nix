{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "uuid";
          version = "1.3.13";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008-2014 Antoine Latter";
        maintainer = "hvr@gnu.org";
        author = "Antoine Latter";
        homepage = "https://github.com/hvr/uuid";
        url = "";
        synopsis = "For creating, comparing, parsing and printing Universally Unique Identifiers";
        description = "This library is useful for creating, comparing, parsing and\nprinting Universally Unique Identifiers.\n\nSee <http://en.wikipedia.org/wiki/UUID> for the general idea.";
        buildType = "Simple";
      };
      components = {
        uuid = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.cryptohash-sha1
            hsPkgs.cryptohash-md5
            hsPkgs.entropy
            hsPkgs.network-info
            hsPkgs.random
            hsPkgs.time
            hsPkgs.text
            hsPkgs.uuid-types
          ];
        };
        tests = {
          testuuid = {
            depends  = [
              hsPkgs.uuid
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.random
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
            ];
          };
        };
        benchmarks = {
          benchmark = {
            depends  = [
              hsPkgs.uuid
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.mersenne-random-pure64
              hsPkgs.random
            ];
          };
        };
      };
    }