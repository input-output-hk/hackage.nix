{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      bench = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ogmarkup";
          version = "3.1.0";
        };
        license = "MIT";
        copyright = "2016 Ogma Project";
        maintainer = "contact@thomasletan.fr";
        author = "Thomas Letan, Laurent Georget";
        homepage = "http://github.com/ogma-project/ogmarkup";
        url = "";
        synopsis = "A lightweight markup language for story writers";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        ogmarkup = {
          depends  = [
            hsPkgs.base
            hsPkgs.megaparsec
            hsPkgs.mtl
          ];
        };
        tests = {
          ogmadown-test = {
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
          ogmarkup-bench = {
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