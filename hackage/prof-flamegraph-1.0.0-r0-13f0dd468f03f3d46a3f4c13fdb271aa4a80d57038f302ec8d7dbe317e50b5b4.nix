{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = {
        name = "prof-flamegraph";
        version = "1.0.0";
      };
      license = "MIT";
      copyright = "(c) 2018 Symbiont.io";
      maintainer = "Sam Halliday";
      author = "Sam Halliday";
      homepage = "";
      url = "";
      synopsis = "Generate flamegraphs from ghc RTS .prof files";
      description = "This is a small tool to convert ghc `.prof` files into a format consumable\nby [FlameGraph](https://github.com/brendangregg/FlameGraph).\n\nObtain `.prof` files by compiling with `--enable-profiling` and running with\n`+RTS -P -RTS`.\n\n> \$ cat app.prof |\n>   prof-flamegraph |\n>   flamegraph.pl > output.svg\n\nThis is a fork of https://github.com/fpco/ghc-prof-flamegraph which\nhides the intermediate flamegraph format.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "prof-flamegraph" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.optparse-applicative)
          ];
        };
      };
    };
  }