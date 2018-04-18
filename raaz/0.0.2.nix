{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "raaz";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ppk@cse.iitk.ac.in";
        author = "Piyush P Kurur";
        homepage = "http://github.com/raaz-crypto/raaz";
        url = "";
        synopsis = "The raaz cryptographic library.";
        description = "Raaz is a cryptographic network library for Haskell\ndesigned to use strong typing to eliminate some common errors that\noccur in cryptographic settings like side channel attacks. This\npackage implements basic types and cryptographic primitives like\nhashes, macs etc. Actual network protocols are expected to use this\nlibrary. Common abstractions like for example packet parsing should\nbe part of this library.";
        buildType = "Simple";
      };
      components = {
        raaz = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.deepseq
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.vector
          ];
        };
        exes = {
          checksum = {
            depends  = [
              hsPkgs.base
              hsPkgs.raaz
            ];
          };
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.hspec
              hsPkgs.transformers
              hsPkgs.raaz
              hsPkgs.vector
            ];
          };
        };
        benchmarks = {
          blaze-vs-write = {
            depends  = [
              hsPkgs.base
              hsPkgs.blaze-builder
              hsPkgs.bytestring
              hsPkgs.criterion
              hsPkgs.raaz
            ];
          };
        };
      };
    }