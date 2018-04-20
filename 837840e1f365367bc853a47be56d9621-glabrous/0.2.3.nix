{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "glabrous";
          version = "0.2.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2016 - Michel Boucey";
        maintainer = "michel.boucey@cybervisible.fr";
        author = "Michel Boucey";
        homepage = "https://github.com/MichelBoucey/glabrous";
        url = "";
        synopsis = "A template DSL library";
        description = "A minimalistic, Mustache-like syntax, truly logic-less,\npure Text template DSL library";
        buildType = "Simple";
      };
      components = {
        glabrous = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.aeson-pretty
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.cereal-text
            hsPkgs.either
            hsPkgs.text
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.either
              hsPkgs.glabrous
              hsPkgs.hspec
              hsPkgs.text
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }