{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "graphql";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2015 J. Daniel Navarro";
        maintainer = "j@dannynavarro.net";
        author = "Danny Navarro";
        homepage = "https://github.com/jdnavarro/graphql-haskell";
        url = "";
        synopsis = "Haskell GraphQL implementation";
        description = "This package provides a rudimentary parser for the\n<https://facebook.github.io/graphql/ GraphQL> language.";
        buildType = "Simple";
      };
      components = {
        graphql = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.attoparsec
          ];
        };
        tests = {
          tasty = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.attoparsec
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.graphql
            ];
          };
        };
      };
    }