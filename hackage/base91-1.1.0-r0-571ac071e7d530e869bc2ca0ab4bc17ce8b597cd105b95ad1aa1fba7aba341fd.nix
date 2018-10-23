{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      bytestring = true;
      text = true;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "base91";
        version = "1.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "ajg";
      author = "Alvaro J. Genial";
      homepage = "https://github.com/ajg/base91";
      url = "";
      synopsis = "A Base91 Encoder & Decoder";
      description = "An implementation of Base91 encoding & decoding of arbitrary bytes (octets)\nto/from characters (all in the ASCII printable range); it includes support\nfor plain Strings, as well as optional support for ByteString and/or Text and\ntheir lazy variants; see the Flags section for details.";
      buildType = "Simple";
    };
    components = {
      "base91" = {
        depends  = ([
          (hsPkgs.base)
        ] ++ pkgs.lib.optional (flags.bytestring) (hsPkgs.bytestring)) ++ pkgs.lib.optional (flags.text) (hsPkgs.text);
      };
      exes = {
        "base91" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base91)
            (hsPkgs.bytestring)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base91)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }