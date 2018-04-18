{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pinch";
          version = "0.3.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mail@abhinavg.net";
        author = "Abhinav Gupta";
        homepage = "https://github.com/abhinav/pinch#readme";
        url = "";
        synopsis = "An alternative implementation of Thrift for Haskell.";
        description = "This library provides machinery for types to specify how they can be\nserialized and deserialized into/from Thrift payloads. It makes no\nassumptions on how these payloads are sent or received and performs no code\ngeneration. Types may specify how to be serialized and deserialized by\ndefining instances of the @Pinchable@ typeclass by hand, or with\nautomatically derived instances by using generics. Check the documentation\nin the \"Pinch\" module for more information.\n\n/What is Thrift?/ Apache Thrift provides an interface description language,\na set of communication protocols, and a code generator and libraries for\nvarious programming languages to interact with the generated code. Pinch\naims to provide an alternative implementation of Thrift for Haskell.";
        buildType = "Simple";
      };
      components = {
        pinch = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.array
            hsPkgs.deepseq
            hsPkgs.ghc-prim
            hsPkgs.hashable
          ];
        };
        tests = {
          pinch-spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.hspec
              hsPkgs.hspec-discover
              hsPkgs.pinch
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }