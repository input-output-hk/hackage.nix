{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      buildreadme = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "prettyprinter";
          version = "1.2.0.1";
        };
        license = "BSD-2-Clause";
        copyright = "";
        maintainer = "David Luposchainsky <dluposchainsky at google>";
        author = "Phil Wadler, Daan Leijen, Max Bolingbroke, Edward Kmett, David Luposchainsky";
        homepage = "http://github.com/quchen/prettyprinter";
        url = "";
        synopsis = "A modern, easy to use, well-documented, extensible prettyprinter.";
        description = "See README.md";
        buildType = "Simple";
      };
      components = {
        prettyprinter = {
          depends  = ([
            hsPkgs.base
            hsPkgs.text
          ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups) ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.void;
        };
        exes = {
          generate_readme = {
            depends  = [
              hsPkgs.base
              hsPkgs.prettyprinter
              hsPkgs.text
              hsPkgs.template-haskell
            ];
          };
        };
        tests = {
          doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
          testsuite = {
            depends  = [
              hsPkgs.base
              hsPkgs.prettyprinter
              hsPkgs.pgp-wordlist
              hsPkgs.bytestring
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.text
            ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups;
          };
        };
        benchmarks = {
          fusion = {
            depends  = [
              hsPkgs.base
              hsPkgs.prettyprinter
              hsPkgs.criterion
              hsPkgs.mtl
              hsPkgs.random
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.ansi-wl-pprint
            ];
          };
          faster-unsafe-text = {
            depends  = [
              hsPkgs.base
              hsPkgs.prettyprinter
              hsPkgs.criterion
              hsPkgs.text
            ];
          };
          large-output = {
            depends  = [
              hsPkgs.base
              hsPkgs.prettyprinter
              hsPkgs.ansi-wl-pprint
              hsPkgs.criterion
              hsPkgs.QuickCheck
              hsPkgs.containers
              hsPkgs.text
              hsPkgs.deepseq
            ];
          };
        };
      };
    }