{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "codec";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "chpatrick@gmail.com";
        author = "Patrick Chilton";
        homepage = "https://github.com/chpatrick/codec";
        url = "";
        synopsis = "Simple bidirectional serialization";
        description = "See the README";
        buildType = "Simple";
      };
      components = {
        codec = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.binary-bits
            hsPkgs.template-haskell
            hsPkgs.mtl
            hsPkgs.aeson
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.transformers
            hsPkgs.profunctors
            hsPkgs.vector
          ];
        };
        tests = {
          codec-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.aeson
              hsPkgs.codec
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.generic-arbitrary
              hsPkgs.binary
            ];
          };
        };
      };
    }