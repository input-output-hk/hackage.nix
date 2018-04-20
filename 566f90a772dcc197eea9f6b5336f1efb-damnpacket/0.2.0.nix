{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "damnpacket";
          version = "0.2.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "me@joelt.io";
        author = "Joel Taylor";
        homepage = "https://github.com/joelteon/damnpacket";
        url = "";
        synopsis = "Parsing dAmn packets";
        description = "";
        buildType = "Simple";
      };
      components = {
        damnpacket = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.trifecta
            hsPkgs.utf8-string
          ];
        };
        tests = {
          render = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.damnpacket
              hsPkgs.QuickCheck
            ];
          };
        };
        benchmarks = {
          parse = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.criterion
              hsPkgs.damnpacket
            ];
          };
        };
      };
    }