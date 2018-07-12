{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      bytestring = true;
      text = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "base91";
          version = "0.1.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "ajg";
        author = "Alvaro J. Genial";
        homepage = "https://github.com/ajg/base91";
        url = "";
        synopsis = "A Base91 encoder & decoder";
        description = "An implementation of Base91 encoding & decoding of arbitrary bytes (octets)\nto/from characters (all in the ASCII printable range; it includes support for\nplain Strings, as well as optional support for ByteString and/or Text; see\nthe Flags section for details.";
        buildType = "Simple";
      };
      components = {
        "base91" = {
          depends  = ([
            hsPkgs.base
          ] ++ pkgs.lib.optional _flags.bytestring hsPkgs.bytestring) ++ pkgs.lib.optional _flags.text hsPkgs.text;
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.base91
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }