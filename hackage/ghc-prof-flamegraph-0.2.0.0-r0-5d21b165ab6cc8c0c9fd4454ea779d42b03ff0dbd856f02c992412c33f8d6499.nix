{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ghc-prof-flamegraph"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "(c) 2015 FP Complete Corporation";
      maintainer = "francesco@fpcomplete.com";
      author = "Francesco Mazzoli";
      homepage = "";
      url = "";
      synopsis = "Generates flamegraphs from GHC .prof files.";
      description = "This is a small tool to convert GHC time profiling reports into a format\nunderstandable by the\nFlameGraph (<https://github.com/brendangregg/FlameGraph>) tool.\n\nTo use, first convert a `.prof` file into the flame graph format using\n@ghc-prof-flamegraph@:\n\n> \$ cat ~/src/packdeps/packdeps.prof | ghc-prof-flamegraph > packdeps.prof.folded\n\nThen you can use the file to produce an svg image, using the\n@flamegraph.pl@ script:\n\n> \$ cat packdeps.prof.folded | ~/src/FlameGraph/flamegraph.pl > packdeps.prof.svg\n\nYou can also generate a flamegraph using the allocation measurements,\nusing the @--alloc@ flag, number of entries using @--entries@ flag, number of\nbytes allocated using @--bytes@. In order to use @--bytes@ or @--ticks@ flag one\nhave to run program with @+RTS -P -RTS@ in order to get those measurements.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ghc-prof-flamegraph" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }