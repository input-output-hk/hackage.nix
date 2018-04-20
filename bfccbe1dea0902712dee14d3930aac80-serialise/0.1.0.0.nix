{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      newtime15 = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "serialise";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2015-2017 Duncan Coutts,\n2015-2017 Well-Typed LLP,\n2015 IRIS Connect Ltd";
        maintainer = "duncan@community.haskell.org, ben@smart-cactus.org";
        author = "Duncan Coutts";
        homepage = "https://github.com/well-typed/cborg";
        url = "";
        synopsis = "A binary serialisation library for Haskell values.";
        description = "This package (formerly @binary-serialise-cbor@) provides pure, efficient\nserialization of Haskell values directly into @ByteString@s for storage or\ntransmission purposes. By providing a set of type class instances, you can\nalso serialise any custom data type you have as well.\n\nThe underlying binary format used is the 'Concise Binary Object\nRepresentation', or CBOR, specified in RFC 7049. As a result,\nserialised Haskell values have implicit structure outside of the\nHaskell program itself, meaning they can be inspected or analyzed\nwith custom tools.";
        buildType = "Simple";
      };
      components = {
        serialise = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cborg
            hsPkgs.containers
            hsPkgs.ghc-prim
            hsPkgs.half
            hsPkgs.hashable
            hsPkgs.primitive
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.vector
          ] ++ (if _flags.newtime15
            then [ hsPkgs.time ]
            else [
              hsPkgs.time
              hsPkgs.old-locale
            ]);
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.array
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.ghc-prim
              hsPkgs.text
              hsPkgs.time
              hsPkgs.containers
              hsPkgs.unordered-containers
              hsPkgs.hashable
              hsPkgs.cborg
              hsPkgs.serialise
              hsPkgs.aeson
              hsPkgs.base64-bytestring
              hsPkgs.base16-bytestring
              hsPkgs.deepseq
              hsPkgs.half
              hsPkgs.QuickCheck
              hsPkgs.scientific
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.quickcheck-instances
              hsPkgs.vector
            ];
          };
        };
        benchmarks = {
          instances = {
            depends  = [
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.vector
              hsPkgs.cborg
              hsPkgs.serialise
              hsPkgs.deepseq
              hsPkgs.criterion
            ] ++ (if _flags.newtime15
              then [ hsPkgs.time ]
              else [
                hsPkgs.time
                hsPkgs.old-locale
              ]);
          };
          micro = {
            depends  = [
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.ghc-prim
              hsPkgs.vector
              hsPkgs.cborg
              hsPkgs.serialise
              hsPkgs.aeson
              hsPkgs.deepseq
              hsPkgs.criterion
              hsPkgs.cereal
              hsPkgs.cereal-vector
              hsPkgs.store
            ];
          };
          versus = {
            depends  = [
              hsPkgs.array
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.ghc-prim
              hsPkgs.text
              hsPkgs.vector
              hsPkgs.cborg
              hsPkgs.serialise
              hsPkgs.filepath
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.aeson
              hsPkgs.cereal
              hsPkgs.half
              hsPkgs.tar
              hsPkgs.zlib
              hsPkgs.pretty
              hsPkgs.criterion
              hsPkgs.store
            ] ++ (if _flags.newtime15
              then [ hsPkgs.time ]
              else [
                hsPkgs.time
                hsPkgs.old-locale
              ]);
          };
        };
      };
    }