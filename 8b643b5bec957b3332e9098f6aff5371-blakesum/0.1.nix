{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "blakesum";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2011 Kevin Cantu";
        maintainer = "me@kevincantu.org";
        author = "Kevin Cantu";
        homepage = "https://github.com/killerswan/Haskell-BLAKE";
        url = "";
        synopsis = "The BLAKE SHA-3 candidate hashes, in Haskell";
        description = "\nThis provides an implementation of the BLAKE SHA-3 candidate hash algorithms\nin Haskell, including BLAKE-256, BLAKE-512, BLAKE-224, and BLAKE-384.\n\nBased on the BLAKE proposal,\nhere: http:\\/\\/131002.net\\/blake\\/blake.pdf\n\nContributions and optimizations are welcome!\n";
        buildType = "Simple";
      };
      components = {
        blakesum = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.bytestring
          ];
        };
      };
    }