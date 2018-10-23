{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "speculation";
        version = "0.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/speculation";
      url = "";
      synopsis = "A framework for safe, programmable, speculative parallelism";
      description = "A framework for safe, programmable, speculative parallelism, loosely based on\n<http://research.microsoft.com/pubs/118795/pldi026-vaswani.pdf>\n\nThis package provides speculative function application and speculative folds. And speculative STM actions take the place\nof the transactional rollback machinery from the paper.\n\nFor example:\n\n@'spec' g f a@ evaluates @f g@ while forcing @a@, if @g == a@ then @f g@ is returned, otherwise @f a@ is evaluated and returned. Furthermore, if the argument has already been evaluated, we skip the @f g@ computation entirely. If a good guess at the value of @a@ is available, this is one way to induce parallelism in an otherwise sequential task. However, if the guess isn\\'t available more cheaply than the actual answer, then this saves no work and if the guess is wrong, you risk evaluating the function twice.\n\nThe best-case timeline looks like:\n\n> [---- f g ----]\n>    [----- a -----]\n> [-- spec g f a --]\n\nThe worst-case timeline looks like:\n\n> [---- f g ----]\n>    [----- a -----]\n>                  [---- f a ----]\n> [------- spec g f a -----------]\n\nCompare these to the timeline of @f \$! a@:\n\n> [---- a -----]\n>              [---- f a ----]\n\n'specSTM' provides a similar time table for STM actions, but also rolls back side-effects.\n\n/Changes in 0.3.0:/\n\n* Speculative folds moved to 'Data.Foldable.Speculation' and expanded to cover all of the\n'Data.Foldable' combinators.\n* specBy and specOn variants added.";
      buildType = "Simple";
    };
    components = {
      "speculation" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parallel)
          (hsPkgs.stm)
        ];
      };
    };
  }