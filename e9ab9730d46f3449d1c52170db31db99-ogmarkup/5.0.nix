{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      bench = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ogmarkup";
          version = "5.0";
        };
        license = "MIT";
        copyright = "2016 - 2018 Ogma Project";
        maintainer = "contact@thomasletan.fr";
        author = "Thomas Letan, Laurent Georget";
        homepage = "https://nest.pijul.com/lthms/ogmarkup";
        url = "";
        synopsis = "A lightweight markup language for story writers";
        description = "ogmarkup is a lightweight markup language for story\nwriters. `ogmarkup` also refers to a haskell library that provides\na generic conversion function to transform an ogmarkup document\ninto a ready-to-publish document.";
        buildType = "Simple";
      };
      components = {
        "ogmarkup" = {
          depends  = [
            hsPkgs.base
            hsPkgs.megaparsec
            hsPkgs.mtl
          ];
        };
        tests = {
          "ogmadown-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.hspec-megaparsec
              hsPkgs.ogmarkup
              hsPkgs.shakespeare
              hsPkgs.megaparsec
              hsPkgs.text
            ];
          };
        };
        benchmarks = {
          "ogmarkup-bench" = {
            depends  = pkgs.lib.optionals _flags.bench [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.ogmarkup
              hsPkgs.file-embed-poly
              hsPkgs.text
            ];
          };
        };
      };
    }