{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.20";
        identifier = {
          name = "servant-pagination";
          version = "2.1.1";
        };
        license = "LGPL-3.0-only";
        copyright = "(c) 2018 Chordify";
        maintainer = "Chordify <haskelldevelopers@chordify.net>, Matthias Benkort <matthias.benkort@gmail.com>";
        author = "Chordify";
        homepage = "https://github.com/chordify/haskell-servant-pagination";
        url = "";
        synopsis = "Type-safe pagination for Servant APIs";
        description = "This module offers opinionated helpers to declare a type-safe and a flexible pagination\nmecanism for Servant APIs. This design, inspired by Heroku's API, provides a small framework\nto communicate about a possible pagination feature of an endpoint, enabling a client to\nconsume the API in different fashions (pagination with offset / limit, endless scroll using last\nreferenced resources, ascending and descending ordering, etc.)";
        buildType = "Simple";
      };
      components = {
        "servant-pagination" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.servant
            hsPkgs.servant-server
            hsPkgs.safe
          ];
        };
        exes = {
          "servant-pagination-simple" = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.servant
              hsPkgs.servant-pagination
              hsPkgs.servant-server
              hsPkgs.warp
            ];
          };
          "servant-pagination-complex" = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.servant
              hsPkgs.servant-pagination
              hsPkgs.servant-server
              hsPkgs.warp
            ];
          };
        };
        tests = {
          "servant-pagination-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.servant-pagination
              hsPkgs.QuickCheck
              hsPkgs.hspec
              hsPkgs.servant-server
              hsPkgs.text
            ];
          };
        };
      };
    }