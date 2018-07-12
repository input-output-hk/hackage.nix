{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      lib-werror = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "crc";
          version = "0.0.1.1";
        };
        license = "MIT";
        copyright = "2015 Michael Xavier";
        maintainer = "michael@michaelxavier.net";
        author = "Michael Xavier";
        homepage = "http://github.com/MichaelXavier/crc";
        url = "";
        synopsis = "Implements various Cyclic Redundancy Checks (CRC)";
        description = "ByteString-based Cyclic Redundancy Checks";
        buildType = "Simple";
      };
      components = {
        "crc" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.vector
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.crc
              hsPkgs.tasty
              hsPkgs.tasty-golden
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.bytestring
              hsPkgs.resourcet
            ];
          };
        };
        benchmarks = {
          "bench" = {
            depends  = [
              hsPkgs.base
              hsPkgs.crc
              hsPkgs.criterion
              hsPkgs.bytestring
            ];
          };
        };
      };
    }