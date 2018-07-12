{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "base16-bytestring";
          version = "0.1.1.6";
        };
        license = "BSD-3-Clause";
        copyright = "2010 Bryan O'Sullivan";
        maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
        author = "Bryan O'Sullivan <bos@serpentine.com>";
        homepage = "http://github.com/bos/base16-bytestring";
        url = "";
        synopsis = "Fast base16 (hex) encoding and decoding for ByteStrings";
        description = "Fast base16 (hex) encoding and decoding for ByteStrings";
        buildType = "Simple";
      };
      components = {
        "base16-bytestring" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.ghc-prim
          ];
        };
      };
    }