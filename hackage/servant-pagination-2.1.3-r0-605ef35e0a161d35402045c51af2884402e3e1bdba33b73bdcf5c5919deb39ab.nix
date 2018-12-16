{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.20";
      identifier = {
        name = "servant-pagination";
        version = "2.1.3";
      };
      license = "LGPL-3.0-only";
      copyright = "(c) 2018 Chordify";
      maintainer = "Chordify <haskelldevelopers@chordify.net>\nMatthias Benkort <matthias.benkort@gmail.com>";
      author = "Chordify";
      homepage = "https://github.com/chordify/haskell-servant-pagination";
      url = "";
      synopsis = "Type-safe pagination for Servant APIs";
      description = "This module offers opinionated helpers to declare a type-safe and a\nflexible pagination mecanism for Servant APIs. This design, inspired by\nHeroku's API, provides a small framework to communicate about a possible\npagination feature of an endpoint, enabling a client to consume the API in\ndifferent fashions (pagination with offset / limit, endless scroll using\nlast referenced resources, ascending and descending ordering, etc.)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.servant)
          (hsPkgs.servant-server)
          (hsPkgs.safe)
        ];
      };
      exes = {
        "servant-pagination-simple" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.servant)
            (hsPkgs.servant-pagination)
            (hsPkgs.servant-server)
            (hsPkgs.warp)
          ];
        };
        "servant-pagination-complex" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.servant)
            (hsPkgs.servant-pagination)
            (hsPkgs.servant-server)
            (hsPkgs.warp)
          ];
        };
      };
      tests = {
        "servant-pagination-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.servant-pagination)
            (hsPkgs.servant-server)
            (hsPkgs.text)
          ];
        };
      };
    };
  }