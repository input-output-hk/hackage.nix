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
      specVersion = "1.2";
      identifier = { name = "speculation"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/speculation";
      url = "";
      synopsis = "A framework for safe, programmable, speculative parallelism";
      description = "A framework for safe, programmable, speculative parallelism, loosely based on\n<http://research.microsoft.com/pubs/118795/pldi026-vaswani.pdf>\n\n@'spec' g f a@ evaluates @f g@ while forcing @a@, if @g == a@ then @f g@ is returned. Otherwise @f a@ is evaluated.\n\nFurthermore, if the argument has already been evaluated, we avoid sparking the parallel computation at all.\n\nIf a good guess at the value of @a@ is available, this is one way to induce parallelism in an otherwise sequential task.\n\nHowever, if the guess isn\\'t available more cheaply than the actual answer, then this saves no work and if the guess is\nwrong, you risk evaluating the function twice.\n\n> spec a f a = f \$! a\n\nThe best-case timeline looks like:\n\n> [---- f g ----]\n>    [----- a -----]\n> [-- spec g f a --]\n\nThe worst-case timeline looks like:\n\n> [---- f g ----]\n>    [----- a -----]\n>                  [---- f a ----]\n> [------- spec g f a -----------]\n\nCompare these to the timeline of @f \$! a@:\n\n> [---- a -----]\n>              [---- f a ----]\n\n'specSTM' provides a similar time table for STM actions, but also rolls back side-effects.\n\n/Changes in 0.1.0:/\n\n* Added @Control.Concurrent.STM.Speculation@ with 'specSTM', and 'specSTM''\n\n/Changes in 0.0.2:/\n\n* 'specFoldr1' bug fix\n\n* Added 'spec'' combinator\n\n/Changes in 0.0.1:/\n\n* Added 'WithoutSpeculation' and 'WrappedFoldable'";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
        buildable = true;
        };
      };
    }