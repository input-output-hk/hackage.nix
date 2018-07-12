{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "kanji";
          version = "3.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "2011 - 2018 Colin Woodbury";
        maintainer = "colingw@gmail.com";
        author = "Colin Woodbury";
        homepage = "https://github.com/fosskers/kanji";
        url = "";
        synopsis = "Perform 漢字検定 (Japan Kanji Aptitude Test) level analysis on Japanese Kanji";
        description = "Perform 漢字検定 (Japan Kanji Aptitude Test) level analysis on Japanese Kanji.";
        buildType = "Simple";
      };
      components = {
        "kanji" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.hashable
            hsPkgs.text
          ];
        };
        exes = {
          "kanji" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.kanji
              hsPkgs.microlens
              hsPkgs.microlens-aeson
              hsPkgs.optparse-applicative
              hsPkgs.text
              hsPkgs.transformers
            ];
          };
        };
        tests = {
          "kanji-test" = {
            depends  = [
              hsPkgs.HUnit-approx
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.kanji
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.text
            ];
          };
        };
        benchmarks = {
          "kanji-bench" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.criterion
              hsPkgs.kanji
              hsPkgs.text
            ];
          };
        };
      };
    }