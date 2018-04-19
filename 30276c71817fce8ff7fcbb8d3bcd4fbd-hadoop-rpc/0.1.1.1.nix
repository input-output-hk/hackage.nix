{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hadoop-rpc";
          version = "0.1.1.1";
        };
        license = "Apache-2.0";
        copyright = "";
        maintainer = "Jacob Stanley <jacob@stanley.io>";
        author = "Jacob Stanley, Conrad Parker";
        homepage = "http://github.com/jystic/hadoop-rpc";
        url = "";
        synopsis = "Use the Hadoop RPC interface from Haskell.";
        description = "Use the Hadoop RPC interface from Haskell.\n\nCurrently we only support v7 of the RPC protocol (< CDH5).\n\nSupport for v9 (>= CDH5) is coming soon.\n\n/The API is still evolving and is highly likely to change in the future./";
        buildType = "Simple";
      };
      components = {
        hadoop-rpc = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.exceptions
            hsPkgs.hashable
            hsPkgs.network
            hsPkgs.protobuf
            hsPkgs.socks
            hsPkgs.stm
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unix
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.xmlhtml
          ];
        };
        exes = {
          test-hadoop-rpc = {
            depends  = [
              hsPkgs.base
              hsPkgs.hadoop-rpc
              hsPkgs.protobuf
              hsPkgs.vector
            ];
          };
        };
      };
    }