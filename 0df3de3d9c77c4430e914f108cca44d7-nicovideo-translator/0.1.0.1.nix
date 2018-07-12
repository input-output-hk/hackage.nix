{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "nicovideo-translator";
          version = "0.1.0.1";
        };
        license = "AGPL-3.0-only";
        copyright = "(c) 2015 Hong Minhee";
        maintainer = "hongminhee@member.fsf.org";
        author = "Hong Minhee";
        homepage = "https://github.com/dahlia/nicovideo-translator";
        url = "";
        synopsis = "Nico Nico Douga (ニコニコ動画) Comment Translator";
        description = "";
        buildType = "Simple";
      };
      components = {
        "nicovideo-translator" = {
          depends  = [
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
            hsPkgs.naver-translate
            hsPkgs.setlocale
            hsPkgs.text
            hsPkgs.text-format
            hsPkgs.wai
            hsPkgs.warp
            hsPkgs.wreq
            hsPkgs.xml-conduit
          ];
        };
        exes = {
          "nicovideo-translator" = {
            depends  = [
              hsPkgs.base
              hsPkgs.nicovideo-translator
            ];
          };
        };
      };
    }