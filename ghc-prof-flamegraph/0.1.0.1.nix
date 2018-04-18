{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ghc-prof-flamegraph";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "(c) 2015 FP Complete Corporation";
        maintainer = "francesco@fpcomplete.com";
        author = "Francesco Mazzoli";
        homepage = "";
        url = "";
        synopsis = "Generates data to be used with flamegraph.pl from .prof files.";
        description = "\nThis is a small tool to convert GHC time profiling reports into a format\nunderstandable by the\nFlameGraph (<https://github.com/brendangregg/FlameGraph>) tool.\n\nTo use, first convert a `.prof` file into the flame graph format using\n@ghc-prof-flamegraph@:\n\n> \$ cat ~/src/packdeps/packdeps.prof | ghc-prof-flamegraph > packdeps.prof.folded\n\nThen you can use the file to produce an svg image, using the\n@flamegraph.pl@ script:\n\n> \$ cat packdeps.prof.folded | ~/src/FlameGraph/flamegraph.pl > packdeps.prof.svg";
        buildType = "Simple";
      };
      components = {
        exes = {
          ghc-prof-flamegraph = {
            depends  = [ hsPkgs.base ];
          };
        };
      };
    }