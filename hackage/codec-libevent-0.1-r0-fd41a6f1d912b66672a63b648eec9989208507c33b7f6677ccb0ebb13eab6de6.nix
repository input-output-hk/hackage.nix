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
      specVersion = "0";
      identifier = {
        name = "codec-libevent";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Adam Langley <agl@imperialviolet.org>";
      homepage = "";
      url = "";
      synopsis = "Cross-platform structure serialisation";
      description = "This package parses and generates Haskell code for\nserialising and deserialising the tagging format in\nlibevent 1.4.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.QuickCheck)
          (hsPkgs.binary-strict)
          (hsPkgs.binary)
          (hsPkgs.parsec)
          (hsPkgs.regex-compat)
        ];
      };
      exes = {
        "codec-libevent-generate" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.QuickCheck)
            (hsPkgs.binary-strict)
            (hsPkgs.binary)
            (hsPkgs.parsec)
            (hsPkgs.regex-compat)
          ];
        };
      };
    };
  }