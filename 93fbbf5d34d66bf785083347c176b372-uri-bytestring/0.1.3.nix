{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      lib-werror = false;
    } // flags;
    in {
      package = {
        specVersion = "1.16";
        identifier = {
          name = "uri-bytestring";
          version = "0.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "Soostone Inc.";
        maintainer = "Michael Xavier <michael.xavier@soostone.com>";
        author = "Doug Beardsley, Michael Xavier";
        homepage = "https://github.com/Soostone/uri-bytestring";
        url = "";
        synopsis = "Haskell URI parsing as ByteStrings";
        description = "uri-bytestring aims to be an RFC3986 compliant URI parser that uses efficient ByteStrings for parsing and representing the URI data.";
        buildType = "Simple";
      };
      components = {
        uri-bytestring = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.blaze-builder
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.uri-bytestring
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.derive
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.lens
              hsPkgs.quickcheck-instances
            ];
          };
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.uri-bytestring
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.deepseq-generics
              hsPkgs.network-uri
              hsPkgs.bytestring
              hsPkgs.blaze-builder
            ];
          };
        };
      };
    }