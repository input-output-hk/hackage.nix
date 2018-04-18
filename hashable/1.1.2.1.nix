{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hashable";
          version = "1.1.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "johan.tibell@gmail.com";
        author = "Milan Straka <fox@ucw.cz>\nJohan Tibell <johan.tibell@gmail.com>";
        homepage = "http://github.com/tibbe/hashable";
        url = "";
        synopsis = "A class for types that can be converted to a hash value";
        description = "This package defines a class, 'Hashable', for types that\ncan be converted to a hash value.  This class\nexists for the benefit of hashing-based data\nstructures.  The package provides instances for\nbasic types and a way to combine hash values.";
        buildType = "Simple";
      };
      components = {
        hashable = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.ghc-prim
            hsPkgs.text
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.hashable
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.QuickCheck
              hsPkgs.random
              hsPkgs.text
            ];
          };
        };
      };
    }