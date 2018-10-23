{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.20";
      identifier = {
        name = "servant-pagination";
        version = "1.0.0";
      };
      license = "LGPL-3.0-only";
      copyright = "(c) 2018 Chordify";
      maintainer = "Matthias Benkort <matthias.benkort@gmail.com>\n, Jeroen Bransen <jeroen.bransen@chordify.net>\n, Chordify <haskelldevelopers@chordify.net>";
      author = "Chordify";
      homepage = "https://github.com/chordify/haskell-servant-pagination";
      url = "";
      synopsis = "Type-safe pagination for Servant APIs";
      description = "This module offers opinionated helpers to declare a type-safe and a flexible pagination\nmechanism for Servant APIs. This design, inspired by Heroku's API, provides a small framework\nto communicate about a possible pagination feature of an endpoint, enabling a client to\nconsume the API in different fashions (pagination with offset / limit, endless scroll using last\nreferenced resources, ascending and descending ordering, etc.)";
      buildType = "Simple";
    };
    components = {
      "servant-pagination" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.servant)
          (hsPkgs.servant-server)
          (hsPkgs.safe)
        ];
      };
      exes = {
        "servant-pagination-simple" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.servant)
            (hsPkgs.servant-pagination)
            (hsPkgs.servant-server)
            (hsPkgs.warp)
          ];
        };
        "servant-pagination-complex" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.servant)
            (hsPkgs.servant-pagination)
            (hsPkgs.servant-server)
            (hsPkgs.warp)
          ];
        };
      };
    };
  }