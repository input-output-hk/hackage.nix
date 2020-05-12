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
      specVersion = "1.6";
      identifier = { name = "runghc"; version = "0.1.0.2"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2011 Michael Zuser";
      maintainer = "Michael Zuser <mikezuser@gmail.com   ";
      author = "Michael Zuser";
      homepage = "https://github.com/bacchanalia/runghc";
      url = "";
      synopsis = "runghc replacement for fast repeated runs";
      description = "This is a replacement for runghc which keeps compiled files\nfor fast runtimes when nothing has changed\n\n@\nUsage: runghc [options] [ghc-options] file [file-arguments]\nOptions:\n-! --compile-only  Do not run the script, just compile it\ndefault=<scr-dir>/.compile\ndefault=<exe-dir>/<basename>-intermediate-files\n-? --help          Display this help message\n@";
      buildType = "Simple";
      };
    components = {
      exes = {
        "runghc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            ];
          buildable = true;
          };
        };
      };
    }