{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "versions";
          version = "3.3.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "colingw@gmail.com";
        author = "Colin Woodbury";
        homepage = "";
        url = "";
        synopsis = "Types and parsers for software version numbers.";
        description = "A library for parsing and comparing software version numbers. We like to give version numbers to our software in a myriad of ways. Some ways follow strict guidelines for incrementing and comparison. Some follow conventional wisdom and are generally self-consistent. Some are just plain asinine. This library provides a means of parsing and comparing /any/ style of versioning, be it a nice Semantic Version like this:\n\n> 1.2.3-r1+git123\n\n...or a monstrosity like this:\n\n> 2:10.2+0.0093r3+1-1\n\nPlease switch to <http://semver.org Semantic Versioning> if you aren't currently using it. It provides consistency in version incrementing and has the best constraints on comparisons.";
        buildType = "Simple";
      };
      components = {
        versions = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.hashable
            hsPkgs.megaparsec
            hsPkgs.text
          ];
        };
        tests = {
          versions-test = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.checkers
              hsPkgs.microlens
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.text
              hsPkgs.versions
            ];
          };
        };
      };
    }