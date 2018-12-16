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
        name = "graphql-api";
        version = "0.1.1";
      };
      license = "LicenseRef-Apache";
      copyright = "";
      maintainer = "Jonathan M. Lange <jml@mumak.net>";
      author = "";
      homepage = "https://github.com/jml/graphql-api#readme";
      url = "";
      synopsis = "Sketch of GraphQL stuff";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.protolude)
          (hsPkgs.exceptions)
          (hsPkgs.transformers)
          (hsPkgs.attoparsec)
          (hsPkgs.aeson)
          (hsPkgs.containers)
          (hsPkgs.scientific)
          (hsPkgs.QuickCheck)
          (hsPkgs.text)
        ];
      };
      tests = {
        "graphql-api-doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.protolude)
            (hsPkgs.exceptions)
            (hsPkgs.transformers)
            (hsPkgs.attoparsec)
            (hsPkgs.doctest)
          ];
        };
        "graphql-api-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.protolude)
            (hsPkgs.exceptions)
            (hsPkgs.transformers)
            (hsPkgs.attoparsec)
            (hsPkgs.aeson)
            (hsPkgs.containers)
            (hsPkgs.graphql-api)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.raw-strings-qq)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            (hsPkgs.directory)
          ];
        };
      };
      benchmarks = {
        "criterion" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.protolude)
            (hsPkgs.exceptions)
            (hsPkgs.transformers)
            (hsPkgs.attoparsec)
            (hsPkgs.criterion)
            (hsPkgs.graphql-api)
          ];
        };
      };
    };
  }