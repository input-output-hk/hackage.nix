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
      specVersion = "1.16";
      identifier = {
        name = "uri-bytestring";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Soostone Inc.";
      maintainer = "Michael Xavier <michael.xavier@soostone.com>";
      author = "Doug Beardsley, Michael Xavier";
      homepage = "https://github.com/Soostone/uri-bytestring";
      url = "";
      synopsis = "Haskell URI parsing as ByteStrings";
      description = "uri-bytestring aims to be an RFC3986 compliant URI parser that uses efficient ByteStrings for parsing and representing the URI data.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.uri-bytestring)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.derive)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.lens)
            (hsPkgs.quickcheck-instances)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.uri-bytestring)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.deepseq-generics)
            (hsPkgs.network-uri)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }