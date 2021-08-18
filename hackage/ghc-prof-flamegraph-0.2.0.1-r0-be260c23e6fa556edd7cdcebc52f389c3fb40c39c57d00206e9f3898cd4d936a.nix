{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ghc-prof-flamegraph"; version = "0.2.0.1"; };
      license = "MIT";
      copyright = "(c) 2015 FP Complete Corporation";
      maintainer = "francesco@fpcomplete.com";
      author = "Francesco Mazzoli";
      homepage = "";
      url = "";
      synopsis = "Generates flamegraphs from GHC .prof files.";
      description = "This is a small tool to render GHC time profiling reports as interactive SVG flame graphs\nusing <https://github.com/brendangregg/FlameGraph FlameGraph>. Basic usage:\n\n> ghc-prof-flamegraph myprogram.prof\n\nYou can also generate a flamegraph using the allocation measurements using the --alloc flag.\n\nThe flamegraph.pl script is bundled with this package, so you don't need to install it\n(though you need to have Perl installed).";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ghc-prof-flamegraph" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }