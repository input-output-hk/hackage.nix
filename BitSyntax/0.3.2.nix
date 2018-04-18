{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "BitSyntax";
          version = "0.3.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "";
        author = "Adam Langley";
        homepage = "http://www.imperialviolet.org/bitsyntax";
        url = "";
        synopsis = "A module to aid in the (de)serialisation of binary data";
        description = "";
        buildType = "Simple";
      };
      components = {
        BitSyntax = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.QuickCheck
            hsPkgs.template-haskell
            hsPkgs.bytestring
          ];
        };
      };
    }