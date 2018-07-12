{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "glabrous";
          version = "0.1.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 (c) Michel Boucey";
        maintainer = "michel.boucey@gmail.com";
        author = "Michel Boucey";
        homepage = "https://github.com/MichelBoucey/glabrous";
        url = "";
        synopsis = "A template library";
        description = "A minimalistic, Mustache-like syntax, truly logic-less,\npure Text template library";
        buildType = "Simple";
      };
      components = {
        "glabrous" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.aeson-pretty
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.either
            hsPkgs.text
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.hspec
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.either
              hsPkgs.glabrous
              hsPkgs.text
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }