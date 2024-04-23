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
      specVersion = "3.0";
      identifier = { name = "hsshellscript"; version = "3.6.2"; };
      license = "LGPL-3.0-or-later";
      copyright = "(C) 2021-2024 by Volker Wysk";
      maintainer = "post@volker-wysk.de";
      author = "Volker Wysk";
      homepage = "http://www.volker-wysk.de/hsshellscript/";
      url = "";
      synopsis = "Using Haskell for Unix shell scripting tasks";
      description = "A Haskell-library for tasks which are usually done in\nshell scripts. This includes parsing command line\narguments, dealing with paths, some commands for dealing\nwith files, calling external programs and subroutines as\nseparate processes, pipes and redirection of input and\noutput and error handling.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
        ];
        buildable = true;
      };
    };
  }