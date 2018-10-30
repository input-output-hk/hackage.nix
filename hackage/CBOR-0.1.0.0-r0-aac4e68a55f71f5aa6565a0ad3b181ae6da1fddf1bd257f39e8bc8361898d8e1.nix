{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "CBOR";
        version = "0.1.0.0";
      };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "orclev@gmail.com";
      author = "R. Kyle Murphy";
      homepage = "https://github.com/orclev/CBOR";
      url = "";
      synopsis = "Encode/Decode values to/from CBOR";
      description = "Provides a simple type to represent CBOR values as well\nas instances of the Get and Put classes from the binary\npackage to encode\\/decode those values to\\/from\nByteStrings. /N.B./ Alpha, interface subject to change!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.binary-bits)
          (hsPkgs.data-binary-ieee754)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.binary-bits)
            (hsPkgs.data-binary-ieee754)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.QuickCheck)
          ];
        };
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.binary-bits)
            (hsPkgs.data-binary-ieee754)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }