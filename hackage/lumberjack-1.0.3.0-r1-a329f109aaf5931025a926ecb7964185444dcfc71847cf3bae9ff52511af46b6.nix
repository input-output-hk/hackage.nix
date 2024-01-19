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
      identifier = { name = "lumberjack"; version = "1.0.3.0"; };
      license = "ISC";
      copyright = "2020-2022, Galois Inc.";
      maintainer = "kquick@galois.com";
      author = "Kevin Quick";
      homepage = "https://github.com/GaloisInc/lumberjack";
      url = "";
      synopsis = "Trek through your code forest and make logs";
      description = "This is a logging facility.  Yes, there are many, and this is the one\nwith a beard, wearing flannel and boots, that gets the job done.  It's\nnot the fanciest, it doesn't have a cargo-van full of features.  This\nlogger is designed to be straightforward to use, provide a good set of\nstandard features, and be useable across a broad set of code.\n\n* Logging itself is a monadic activity.  This activity is most often\nperformed in a monad stack with a MonadIO context to allow\nwriting to files.\n\n* The specific logging action implementations are managed separately\nfrom the actions of logging messages in the target code.  This\nallows logging to be configurable and the manner of logging to\nbe specified at startup time without requiring changes in the\ncode from which log messages are being generated.\n\n* The logging implementation code can use contravariant functors to\nadjust existing logging.\n\n* Main code will typically retrieve the logging actions from a Reader\ncontext in your monad stack.  That said, Log actions are not tied\nto an enclosing Monad.  There are helpers to support a Monad which\ncan store Log actions, but Log actions can also be explicitly\npassed and used.\n\n* The prettyprinter package is used for formatting.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."prettyprinter-ansi-terminal" or (errorHandler.buildDepError "prettyprinter-ansi-terminal"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      exes = {
        "example_log" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."lumberjack" or (errorHandler.buildDepError "lumberjack"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }