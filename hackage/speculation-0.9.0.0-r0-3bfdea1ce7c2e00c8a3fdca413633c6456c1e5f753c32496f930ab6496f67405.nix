{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      lib = true;
      tests = false;
      benchmarks = false;
      optimize = true;
      hpc = true;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "speculation"; version = "0.9.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/speculation";
      url = "";
      synopsis = "A framework for safe, programmable, speculative parallelism";
      description = "A framework for safe, programmable, speculative parallelism, loosely based on:\n\n*  Prakash Prabhu, G. Ramalingam, and Kapil Vaswani, \\\"/Safe Programmable Speculative Parallelism/\\\",\nIn the proceedings of Programming Language Design and Implementation (PLDI) Vol 45, Issue 6 (June 2010) pp 50-61.\n<http://research.microsoft.com/pubs/118795/pldi026-vaswani.pdf>\n\nThis package provides speculative function application and speculative folds. Speculative STM transactions take the place\nof the transactional rollback machinery from the paper.\n\nFor example:\n\n@'spec' g f a@ evaluates @f g@ while forcing @a@, if @g == a@ then @f g@ is returned, otherwise @f a@ is evaluated and returned. Furthermore, if the argument has already been evaluated, we skip the @f g@ computation entirely. If a good guess at the value of @a@ is available, this is one way to induce parallelism in an otherwise sequential task. However, if the guess isn\\'t available more cheaply than the actual answer, then this saves no work and if the guess is wrong, you risk evaluating the function twice. Under high load, since 'f g' is computed via the spark queue, the speculation will be skipped and you will obtain the same answer as 'f \$! a'.\n\nThe best-case timeline looks like:\n\n> foreground: [----- a -----]\n> foreground:               [-]    (check g == a)\n> spark:         [----- f g -----]\n> overall:    [--- spec g f a ---]\n\nThe worst-case timeline looks like:\n\n> foreground: [----- a -----]\n> foreground:               [-]               (check g == a)\n> foreground:                 [---- f a ----]\n> spark:         [----- f g -----]\n> overall:    [-------- spec g f a ---------]\n\nNote that, if @f g@ takes longer than a to compute, in the HEAD release of GHC, @f g@ will be collected and killed during garbage collection.\n\n> foreground: [----- a -----]\n> foreground:               [-]               (check g == a)\n> foreground:                 [---- f a ----]\n> spark:         [---- f g ----######         (#'s mark when this spark is collectable)\n> overall:    [--------- spec g f a --------]\n\nUnder high load:\n\n> foreground: [----- a -----]\n> foreground:               [-]               (check g == a)\n> foreground:                 [---- f a ----]\n> overall:    [-------- spec g f a ---------]\n\nCompare these to the timeline of @f \$! a@:\n\n> foreground: [----- a -----]\n> foreground:               [---- f a ----]\n> orverall:   [---------- f \$! a ---------]\n\n'specSTM' provides a similar time table for STM actions, but also rolls back side-effects. The one unfortunate operational distinction is that it is forced to compute 'a' in the background thread and therefore degrades slightly less gracefully under load.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = (pkgs.lib).optionals (!(!flags.lib)) [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.parallel)
          (hsPkgs.stm)
          ];
        };
      exes = {
        "test-speculation" = {
          depends = (pkgs.lib).optionals (!(!flags.tests)) [
            (hsPkgs.base)
            (hsPkgs.ghc-prim)
            (hsPkgs.parallel)
            (hsPkgs.stm)
            (hsPkgs.containers)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            ];
          };
        "benchmark-speculation" = {
          depends = (pkgs.lib).optionals (!(!flags.benchmarks)) [
            (hsPkgs.base)
            (hsPkgs.ghc-prim)
            (hsPkgs.parallel)
            (hsPkgs.stm)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            ];
          };
        };
      };
    }