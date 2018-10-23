{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hex-text";
        version = "0.1.0.0";
      };
      license = "Apache-2.0";
      copyright = "2018 Typeclass Consulting, LLC";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/hex-text";
      url = "";
      synopsis = "ByteString-Text hexidecimal conversions";
      description = "Encode a ByteString as a hexidecimal Text value,\nor decode hexidecimal Text as a ByteString.";
      buildType = "Simple";
    };
    components = {
      "hex-text" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ];
      };
      tests = {
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }