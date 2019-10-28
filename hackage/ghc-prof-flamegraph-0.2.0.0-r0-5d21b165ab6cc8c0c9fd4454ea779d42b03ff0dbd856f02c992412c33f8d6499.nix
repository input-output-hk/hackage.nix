let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }