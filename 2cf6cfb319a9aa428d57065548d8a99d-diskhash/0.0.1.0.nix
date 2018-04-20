{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "diskhash";
          version = "0.0.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Luis Pedro Coelho";
        author = "Luis Pedro Coelho";
        homepage = "";
        url = "";
        synopsis = "Disk-based hash table";
        description = "Disk-based hash table";
        buildType = "Simple";
      };
      components = {
        diskhash = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
        tests = {
          diskhashtest = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-th
            ];
          };
        };
      };
    }