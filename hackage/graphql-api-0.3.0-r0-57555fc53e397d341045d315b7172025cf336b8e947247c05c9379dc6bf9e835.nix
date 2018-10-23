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
        name = "graphql-api";
        version = "0.3.0";
      };
      license = "LicenseRef-Apache";
      copyright = "";
      maintainer = "Jonathan M. Lange <jml@mumak.net>, Tom Hunger <tehunger@gmail.com>";
      author = "Jonathan M. Lange, Tom Hunger";
      homepage = "https://github.com/haskell-graphql/graphql-api#readme";
      url = "";
      synopsis = "GraphQL API";
      description = "Implement [GraphQL](http://graphql.org/) servers in Haskell.\n\nProvides a Servant-like type-based API for defining GraphQL schemas and\nimplementing handlers for those schemas.\n\nSee [README.md](https://github.com/haskell-graphql/graphql-api#graphql-api) for more details.";
      buildType = "Simple";
    };
    components = {
      "graphql-api" = {
        depends  = [
          (hsPkgs.QuickCheck)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.ghc-prim)
          (hsPkgs.protolude)
          (hsPkgs.scientific)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "graphql-api-doctests" = {
          depends  = [
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.exceptions)
            (hsPkgs.protolude)
            (hsPkgs.transformers)
          ];
        };
        "graphql-api-tests" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.graphql-api)
            (hsPkgs.hspec)
            (hsPkgs.protolude)
            (hsPkgs.raw-strings-qq)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            (hsPkgs.transformers)
          ];
        };
      };
      benchmarks = {
        "criterion" = {
          depends  = [
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.exceptions)
            (hsPkgs.graphql-api)
            (hsPkgs.protolude)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }