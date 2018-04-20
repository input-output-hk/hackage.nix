{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "html-parse";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2016 Ben Gamari";
        maintainer = "ben@smart-cactus.org";
        author = "Ben Gamari";
        homepage = "http://github.com/bgamari/html-parse";
        url = "";
        synopsis = "A high-performance HTML tokenizer";
        description = "This package provides a fast and reasonably robust HTML5 tokenizer built\nupon the @attoparsec@ library. The parsing strategy is based upon the HTML5\nparsing specification with few deviations.\n\nThe package targets similar use-cases to the venerable @tagsoup@ library,\nbut is significantly more efficient, achieving parsing speeds of over 50\nmegabytes per second on modern hardware with and typical web documents.";
        buildType = "Simple";
      };
      components = {
        html-parse = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.attoparsec
            hsPkgs.text
          ];
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.deepseq
              hsPkgs.attoparsec
              hsPkgs.text
              hsPkgs.tagsoup
              hsPkgs.criterion
            ];
          };
        };
      };
    }