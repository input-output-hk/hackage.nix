{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "octane";
          version = "0.16.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Taylor Fausak";
        author = "";
        homepage = "https://github.com/tfausak/octane#readme";
        url = "";
        synopsis = "Parse Rocket League replays.";
        description = "Octane parses Rocket League replays.";
        buildType = "Simple";
      };
      components = {
        "octane" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bimap
            hsPkgs.binary
            hsPkgs.binary-bits
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.data-binary-ieee754
            hsPkgs.data-default-class
            hsPkgs.deepseq
            hsPkgs.file-embed
            hsPkgs.overloaded-records
            hsPkgs.regex-compat
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
        exes = {
          "octane" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.http-client
              hsPkgs.http-client-tls
              hsPkgs.octane
            ];
          };
        };
        tests = {
          "octane-test-suite" = {
            depends  = [
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.binary-bits
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.octane
              hsPkgs.tasty
              hsPkgs.tasty-hspec
              hsPkgs.tasty-quickcheck
              hsPkgs.text
            ];
          };
        };
        benchmarks = {
          "octane-benchmark" = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.octane
            ];
          };
        };
      };
    }