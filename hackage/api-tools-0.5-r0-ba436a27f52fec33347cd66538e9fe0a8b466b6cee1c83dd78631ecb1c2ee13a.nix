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
        name = "api-tools";
        version = "0.5";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Iris Connect 2013-2014";
      maintainer = "Chris Dornan <chrisd@irisconnect.co.uk> and Adam Gundry <adam@well-typed.com>";
      author = "Chris Dornan <chrisd@irisconnect.co.uk> and Adam Gundry <adam@well-typed.com>";
      homepage = "http://github.com/iconnect/api-tools";
      url = "";
      synopsis = "DSL for generating API boilerplate and docs";
      description = "api-tools provides a compact DSL for describing an API.\nIt uses Template Haskell to generate the\ncorresponding data types and assorted tools for\nworking with it, including Aeson and QuickCheck\ninstances for converting between JSON and the\ngenerated types and writing unit tests.";
      buildType = "Simple";
    };
    components = {
      "api-tools" = {
        depends  = [
          (hsPkgs.Cabal)
          (hsPkgs.QuickCheck)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.array)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.lens)
          (hsPkgs.old-locale)
          (hsPkgs.regex-compat-tdfa)
          (hsPkgs.safe)
          (hsPkgs.safecopy)
          (hsPkgs.time)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
        build-tools = [
          (hsPkgs.buildPackages.alex)
          (hsPkgs.buildPackages.happy)
        ];
      };
      exes = {
        "migration-tool" = {
          depends  = [
            (hsPkgs.api-tools)
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.array)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.containers)
            (hsPkgs.lens)
            (hsPkgs.old-locale)
            (hsPkgs.regex-compat-tdfa)
            (hsPkgs.safe)
            (hsPkgs.safecopy)
            (hsPkgs.time)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
      };
      tests = {
        "test-api-tools" = {
          depends  = [
            (hsPkgs.api-tools)
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.array)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.containers)
            (hsPkgs.lens)
            (hsPkgs.old-locale)
            (hsPkgs.regex-compat-tdfa)
            (hsPkgs.safe)
            (hsPkgs.safecopy)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.time)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }