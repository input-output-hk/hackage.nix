{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pinch";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mail@abhinavg.net";
        author = "Abhinav Gupta";
        homepage = "https://github.com/abhinav/pinch";
        url = "";
        synopsis = "An alternative implementation of Thrift for Haskell.";
        description = "This library provides machinery for types to specify how they can be\nserialized and deserialized into/from Thrift payloads. It makes no\nassumptions on how these payloads are sent or received and performs no\ncode generation. Types may specify how to be serialized and deserialized\nby defining instances of the @Pinchable@ typeclass by hand, or with\nautomatically derived instances by using generics. Check the documentation\nin the \"Pinch\" module for more information.\n\n/What is Thrift?/: Apache Thrift provides an interface description\nlanguage, a set of communication protocols, and a code generator and\nlibraries for various programming languages to interact with the generated\ncode. Pinch aims to provide an alternative implementation of Thrift for\nHaskell.\n\nDocumentation is available on\n<http://hackage.haskell.org/package/pinch Hackage> and\n<http://abhinavg.net/pinch/ here>.";
        buildType = "Simple";
      };
      components = {
        pinch = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.hashable
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
        tests = {
          pinch-spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.hspec
              hsPkgs.hspec-discover
              hsPkgs.QuickCheck
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.pinch
            ];
          };
        };
        benchmarks = {
          pinch-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.QuickCheck
              hsPkgs.text
              hsPkgs.pinch
            ];
          };
        };
      };
    }