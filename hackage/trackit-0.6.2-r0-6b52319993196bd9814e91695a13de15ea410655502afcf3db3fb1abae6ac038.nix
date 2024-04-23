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
      identifier = { name = "trackit"; version = "0.6.2"; };
      license = "BSD-3-Clause";
      copyright = "2018-2019 Emil Axelsson";
      maintainer = "78emil@gmail.com";
      author = "Emil Axelsson";
      homepage = "https://github.com/emilaxelsson/trackit";
      url = "";
      synopsis = "A command-line tool for live monitoring";
      description = "@trackit@ is a command-line tool that listens for changes\nin a user-supplied directory. Whenever there is a change,\na custom command is executed and its standard output is\nshown live in the terminal.\n\n= Examples\n\nShow a live listing of the files in the current directory:\n\n>> trackit --watch-dir=. --command=\"ls --color\"\n\nShow a live revision graph of a Git repository:\n\n>> GIT_DIR=`git rev-parse --git-dir`\n>> trackit --watch-tree=$GIT_DIR --command=\"git log --graph --all --oneline --decorate --color\"\n\nFor more information, see the\n<https://github.com/emilaxelsson/trackit/blob/master/README.md README>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "trackit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            (hsPkgs."fsnotify" or (errorHandler.buildDepError "fsnotify"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."process-extras" or (errorHandler.buildDepError "process-extras"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          ];
          buildable = true;
        };
      };
    };
  }