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
      identifier = { name = "turtle"; version = "1.2.4"; };
      license = "BSD-3-Clause";
      copyright = "2015 Gabriel Gonzalez";
      maintainer = "Gabriel439@gmail.com";
      author = "Gabriel Gonzalez";
      homepage = "";
      url = "";
      synopsis = "Shell programming, Haskell-style";
      description = "@turtle@ is a reimplementation of the Unix command line environment\nin Haskell so that you can use Haskell as both a shell and a scripting\nlanguage.\n\nFeatures include:\n\n* Batteries included: Command an extended suite of predefined utilities\n\n* Interoperability: You can still run external shell commands\n\n* Portability: Works on Windows, OS X, and Linux\n\n* Exception safety: Safely acquire and release resources\n\n* Streaming: Transform or fold command output in constant space\n\n* Patterns: Use typed regular expressions that can parse structured values\n\n* Formatting: Type-safe @printf@-style text formatting\n\n* Modern: Supports @text@ and @system-filepath@\n\nRead \"Turtle.Tutorial\" for a detailed tutorial or \"Turtle.Prelude\" for a\nquick-start guide\n\n@turtle@ is designed to be beginner-friendly, but as a result lacks certain\nfeatures, like tracing commands.  If you feel comfortable using @turtle@\nthen you should also check out the @Shelly@ library which provides similar\nfunctionality.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
          (hsPkgs."hostname" or (errorHandler.buildDepError "hostname"))
          (hsPkgs."managed" or (errorHandler.buildDepError "managed"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
          (hsPkgs."system-fileio" or (errorHandler.buildDepError "system-fileio"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."optional-args" or (errorHandler.buildDepError "optional-args"))
        ] ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
          else [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]);
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
          ];
          buildable = true;
        };
      };
    };
  }