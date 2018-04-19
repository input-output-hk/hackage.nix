{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "protobuf";
          version = "0.2.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "sseverance@alphaheavy.com, nhowell@alphaheavy.com";
        author = "Steve Severance, Nathan Howell";
        homepage = "https://github.com/alphaHeavy/protobuf";
        url = "";
        synopsis = "Google Protocol Buffers via GHC.Generics";
        description = "Google Protocol Buffers via GHC.Generics.\n\nProtocol Buffers are a way of encoding structured data in an efficient yet extensible format.\nGoogle uses Protocol Buffers for almost all of its internal RPC protocols and file formats.\n\nThis library supports a useful subset of Google Protocol Buffers message specifications\nin a Haskell. No preprocessor or additional build steps are required for message encoding and decoding.\n\nRecord specifications are built by defining records with specially defined fields that\ncapture most of the Protocol Buffers specification language.\n";
        buildType = "Simple";
      };
      components = {
        protobuf = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-orphans
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.data-binary-ieee754
            hsPkgs.deepseq
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          protobuf-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cereal
              hsPkgs.containers
              hsPkgs.hex
              hsPkgs.mtl
              hsPkgs.protobuf
              hsPkgs.tagged
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.HUnit
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }