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
        name = "bytestring-conversion";
        version = "0.2.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) 2014 Toralf Wittner";
      maintainer = "Toralf Wittner <tw@dtex.org>";
      author = "Toralf Wittner";
      homepage = "https://github.com/twittner/bytestring-conversion/";
      url = "";
      synopsis = "Type-classes to convert values to and from ByteString.";
      description = "Defines the type-classes 'ToByteString' and 'FromByteString'\nto convert values to and from ByteString.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.double-conversion)
          (hsPkgs.text)
        ];
      };
      tests = {
        "bytestring-conversion-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-conversion)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
      benchmarks = {
        "bytestring-conversion-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-conversion)
            (hsPkgs.criterion)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }