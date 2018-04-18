{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "titlecase";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2015 Nikita Karetnikov";
        maintainer = "nikita@karetnikov.org";
        author = "Nikita Karetnikov";
        homepage = "https://github.com/nkaretnikov/titlecase";
        url = "";
        synopsis = "Convert English words to title case";
        description = "Capitalize all English words except articles (a, an, the),\ncoordinating conjunctions (for, and, nor, but, or, yet, so), and\nprepositions (unless they begin or end the title).  The\nprepositions are taken from this list:\n<https://en.wikipedia.org/wiki/List_of_English_prepositions>.";
        buildType = "Simple";
      };
      components = {
        titlecase = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-markup
            hsPkgs.semigroups
            hsPkgs.text
          ];
        };
        exes = {
          titlecase = {
            depends  = [
              hsPkgs.base
              hsPkgs.blaze-markup
              hsPkgs.text
              hsPkgs.titlecase
            ];
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.semigroups
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.text
              hsPkgs.titlecase
            ];
          };
        };
      };
    }