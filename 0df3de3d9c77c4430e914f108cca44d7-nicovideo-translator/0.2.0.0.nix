{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "nicovideo-translator";
          version = "0.2.0.0";
        };
        license = "AGPL-3.0-only";
        copyright = "(c) 2015–2016 Hong Minhee";
        maintainer = "hong.minhee@gmail.com";
        author = "Hong Minhee";
        homepage = "https://github.com/dahlia/nicovideo-translator";
        url = "";
        synopsis = "Nico Nico Douga (ニコニコ動画) Comment Translator";
        description = "Translate comments (written in Japanese) on\nNico Nico Douga (ニコニコ動画) to your language.\n\nSee also README.md for more details.";
        buildType = "Simple";
      };
      components = {
        nicovideo-translator = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.async
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.cmdargs
            hsPkgs.containers
            hsPkgs.dns
            hsPkgs.http-client
            hsPkgs.http-types
            hsPkgs.iso639
            hsPkgs.lens
            hsPkgs.lens-aeson
            hsPkgs.setlocale
            hsPkgs.text
            hsPkgs.text-format
            hsPkgs.unordered-containers
            hsPkgs.wai
            hsPkgs.warp
            hsPkgs.wreq
            hsPkgs.xml-conduit
          ];
        };
        exes = {
          nicovideo-translator = {
            depends  = [
              hsPkgs.base
              hsPkgs.nicovideo-translator
            ];
          };
        };
      };
    }