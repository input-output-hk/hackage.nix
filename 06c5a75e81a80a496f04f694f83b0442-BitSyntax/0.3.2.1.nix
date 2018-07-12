{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "BitSyntax";
          version = "0.3.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Joe Crayne";
        author = "Adam Langley";
        homepage = "https://github.com/joecrayne/hs-bitsyntax";
        url = "";
        synopsis = "A module to aid in the (de)serialisation of binary data";
        description = "";
        buildType = "Simple";
      };
      components = {
        "BitSyntax" = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
            hsPkgs.template-haskell
            hsPkgs.bytestring
          ];
        };
      };
    }