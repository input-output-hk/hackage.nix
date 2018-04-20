{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hasmin";
          version = "0.3.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Cristian Adrián Ontivero <cristianontivero@gmail.com>";
        author = "(c) 2017 Cristian Adrián Ontivero <cristianontivero@gmail.com>";
        homepage = "https://github.com/contivero/hasmin/";
        url = "";
        synopsis = "\"A CSS Minifier\"";
        description = "A CSS minifier which not only aims at reducing the amount of bytes of the\noutput, but also at improving gzip compression. By default, the output is the\nminified CSS file, but hasmin allows also its compression into gzip using\nGoogle's Zopfli library.\n\nTo use it: ./hasmin input.css > output.css\n\nBy default, most minification techniques are enabled. For a list of\navailable flags, do: ./hasmin --help";
        buildType = "Simple";
      };
      components = {
        hasmin = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.mainland-pretty
            hsPkgs.matrix
            hsPkgs.mtl
            hsPkgs.numbers
            hsPkgs.parsers
            hsPkgs.semigroups
            hsPkgs.text
          ];
        };
        exes = {
          hasmin = {
            depends  = [
              hsPkgs.base
              hsPkgs.attoparsec
              hsPkgs.containers
              hsPkgs.optparse-applicative
              hsPkgs.parsers
              hsPkgs.mainland-pretty
              hsPkgs.text
              hsPkgs.hopfli
              hsPkgs.bytestring
              hsPkgs.gitrev
              hsPkgs.matrix
              hsPkgs.mtl
              hsPkgs.numbers
              hsPkgs.hasmin
            ];
          };
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.attoparsec
              hsPkgs.hspec
              hsPkgs.hspec-attoparsec
              hsPkgs.mtl
              hsPkgs.QuickCheck
              hsPkgs.text
              hsPkgs.hasmin
            ];
          };
          doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.doctest-discover
              hsPkgs.doctest
              hsPkgs.hasmin
            ];
          };
        };
      };
    }