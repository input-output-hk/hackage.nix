{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ethereum-analyzer-cli";
          version = "3.0.0";
        };
        license = "Apache-2.0";
        copyright = "";
        maintainer = "k_@berkeley.edu";
        author = "Kevin Chen";
        homepage = "https://github.com/zchn/ethereum-analyzer";
        url = "";
        synopsis = "A CLI frontend for ethereum-analyzer.";
        description = "A CLI frontend for ethereum-analyzer.";
        buildType = "Simple";
      };
      components = {
        "ethereum-analyzer-cli" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.conduit-combinators
            hsPkgs.directory
            hsPkgs.ethereum-analyzer
            hsPkgs.ethereum-analyzer-deps
            hsPkgs.exceptions
            hsPkgs.hexstring
            hsPkgs.http-conduit
            hsPkgs.json-rpc
            hsPkgs.monad-logger
            hsPkgs.mtl
            hsPkgs.protolude
            hsPkgs.text
            hsPkgs.tostring
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
        exes = {
          "ea-analyze" = {
            depends  = [
              hsPkgs.base
              hsPkgs.ethereum-analyzer
              hsPkgs.ethereum-analyzer-cli
              hsPkgs.ethereum-analyzer-deps
              hsPkgs.monad-logger
              hsPkgs.optparse-applicative
              hsPkgs.optparse-text
              hsPkgs.protolude
              hsPkgs.text
            ];
          };
          "ea-bytecode-vis" = {
            depends  = [
              hsPkgs.base
              hsPkgs.ethereum-analyzer-cli
              hsPkgs.hflags
              hsPkgs.monad-logger
              hsPkgs.protolude
            ];
          };
          "ea-dump-contract" = {
            depends  = [
              hsPkgs.base
              hsPkgs.ethereum-analyzer-cli
              hsPkgs.ethereum-analyzer-deps
              hsPkgs.hflags
              hsPkgs.monad-logger
              hsPkgs.protolude
            ];
          };
        };
      };
    }