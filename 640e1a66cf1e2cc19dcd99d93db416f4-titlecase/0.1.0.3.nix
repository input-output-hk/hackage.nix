{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "titlecase";
          version = "0.1.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Peter Simons <simons@cryp.to>";
        author = "Nikita Karetnikov,\nPeter Simons,\nAaron Wolf";
        homepage = "https://github.com/peti/titlecase#readme";
        url = "";
        synopsis = "Convert English words to title case";
        description = "Capitalize all English words except articles (a, an, the), coordinating conjunctions (for, and, nor, but, or, yet, so), and prepositions (unless they begin or end the title).  The prepositions are taken from <https://en.wikipedia.org/wiki/List_of_English_prepositions>.";
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
              hsPkgs.semigroups
              hsPkgs.text
              hsPkgs.titlecase
            ];
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.blaze-markup
              hsPkgs.semigroups
              hsPkgs.text
              hsPkgs.titlecase
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
            ];
          };
        };
      };
    }