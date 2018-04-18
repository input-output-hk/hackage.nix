{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.14";
        identifier = {
          name = "tasty-silver";
          version = "3.1.11";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Philipp Hausmann";
        author = "Philipp Hausmann, Roman Cheplyaka and others";
        homepage = "https://github.com/phile314/tasty-silver";
        url = "";
        synopsis = "A fancy test runner, including support for golden tests.";
        description = "This package provides a fancy test runner and support for «golden testing».\nA golden test is an IO action that writes its result to a file.\nTo pass the test, this output file should be identical to the corresponding\n«golden» file, which contains the correct result for the test.\nThe test runner allows filtering tests using regexes, and to interactively\ninspect the result of golden tests.\nThis package is a heavily extended fork of tasty-golden.";
        buildType = "Simple";
      };
      components = {
        tasty-silver = {
          depends  = [
            hsPkgs.ansi-terminal
            hsPkgs.async
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.deepseq
            hsPkgs.filepath
            hsPkgs.mtl
            hsPkgs.optparse-applicative
            hsPkgs.process
            hsPkgs.process-extras
            hsPkgs.regex-tdfa
            hsPkgs.semigroups
            hsPkgs.stm
            hsPkgs.tagged
            hsPkgs.tasty
            hsPkgs.temporary
            hsPkgs.text
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-silver
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.process
              hsPkgs.temporary
              hsPkgs.transformers
            ];
          };
        };
      };
    }