{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "base91";
          version = "2.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "ajg";
        author = "Alvaro J. Genial";
        homepage = "https://github.com/ajg/base91";
        url = "";
        synopsis = "A Base91 Encoder & Decoder";
        description = "An implementation of Base91 encoding & decoding of arbitrary bytes (octets)\nto/from characters (all in the ASCII printable range)";
        buildType = "Simple";
      };
      components = {
        base91 = {
          depends  = [
            hsPkgs.base
            hsPkgs.mono-traversable
          ];
        };
        exes = {
          base91 = {
            depends  = [
              hsPkgs.base
              hsPkgs.base91
              hsPkgs.bytestring
              hsPkgs.mono-traversable
              hsPkgs.text
            ];
          };
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.base91
              hsPkgs.bytestring
              hsPkgs.mono-traversable
              hsPkgs.text
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }