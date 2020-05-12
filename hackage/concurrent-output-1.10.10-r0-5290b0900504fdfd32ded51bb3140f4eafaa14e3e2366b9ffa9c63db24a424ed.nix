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
      specVersion = "1.8";
      identifier = { name = "concurrent-output"; version = "1.10.10"; };
      license = "BSD-2-Clause";
      copyright = "2015-2017 Joey Hess, 2009 Joachim Breitner";
      maintainer = "Joey Hess <id@joeyh.name>";
      author = "Joey Hess, Joachim Breitner";
      homepage = "";
      url = "";
      synopsis = "Ungarble output from several threads or commands";
      description = "Lets multiple threads and external processes concurrently output to the\nconsole, without it getting all garbled up.\n\nBuilt on top of that is a way of defining multiple output regions,\nwhich are automatically laid out on the screen and can be individually\nupdated by concurrent threads. Can be used for progress displays etc.\n\n<<https://joeyh.name/code/concurrent-output/demo2.gif>>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."terminal-size" or (errorHandler.buildDepError "terminal-size"))
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
        buildable = true;
        };
      };
    }