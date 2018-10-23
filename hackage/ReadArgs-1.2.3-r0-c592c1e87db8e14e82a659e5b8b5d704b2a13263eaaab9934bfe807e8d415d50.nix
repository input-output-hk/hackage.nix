{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "ReadArgs";
        version = "1.2.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "noah.easterly@gmail.com";
      author = "Noah Luck Easterly";
      homepage = "http://github.com/rampion/ReadArgs";
      url = "";
      synopsis = "Simple command line argument parsing";
      description = "ReadArgs provides the @readArgs@ IO action, which lets you tell the compiler\nto parse the command line arguments to fit the type signature you give.\n\nFor example @(a :: Int, b :: String, c :: Float) <- readArgs@ would\nparse the first runtime argument as an @Int@, the second as a @String@ (no\nquotes required) and the third as a @Float@.\n\nIf the runtime arguments are incompatible with the type signature,\nthen a simple usage statement is given of the types needed.\n\nContinuing the previous example, if it was used in a\nprogram named @Example@, the error message for the above\naction would be:\n\n@\nusage: Example Int String Float\n@\n\nAny type that has both @Typeable@ and @Read@ instances\ncan be used. @Char@, @String@, and @Text@ are handled specially so that\ncommand line arguments for both do not require quotes (as their\n@Read@ instances do). A special instance is provided for @FilePath@ so\nthat no constructor or quotes are required.\n\n@readArgs@ also supports optional arguments and variadic arguments.\nOptional arguments are specified using @Maybe@, and variadic arguments\nusing a list.  @(a :: Int, b :: Maybe String, c :: [Float]) <- readArgs@\nwould successfully parse any of the following sets of command line arguments:\n\n@\nExample 1\nExample 1 2 3 4\nExample 1 foo\nExample 1 foo 2 3 4\n@\n\nBut not\n\n@\nExample\nExample foo\nExample 1.0\n@\n\nUsage statements for optional and variadic arguments use command-line\nparlance:\n\n@\nusage: Example Int [String] [Float..]\n@\n\nNote that both optional and variadic parsers are greedy by default\n(so @Example 1 2 3 4@ was parsed as @(1, \"2\", [3.0,4.0])@.  They\nmay both be made non-greedy through use of the @NonGreedy@ constructor:\n\n@\n( a :: Int\n, NonGreedy b :: NonGreedy Maybe String\n, NonGreedy c :: NonGreedy [] Float\n) <- readArgs\n@";
      buildType = "Simple";
    };
    components = {
      "ReadArgs" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.system-filepath)
          (hsPkgs.text)
        ];
      };
      exes = {
        "ReadArgsEx" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.system-filepath)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "ReadArgsSpec" = {
          depends  = [
            (hsPkgs.hspec)
            (hsPkgs.base)
            (hsPkgs.system-filepath)
            (hsPkgs.text)
          ];
        };
      };
    };
  }