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
      identifier = { name = "hsshellscript"; version = "3.3.1"; };
      license = "LicenseRef-LGPL";
      copyright = "(c)2004-2011 by Volker Wysk";
      maintainer = "hsss@volker-wysk.de";
      author = "Volker Wysk";
      homepage = "http://www.volker-wysk.de/hsshellscript/";
      url = "";
      synopsis = "Haskell for Unix shell scripting tasks";
      description = "A Haskell-library for tasks which are usually done in\nshell scripts. This includes parsing command line\narguments; dealing with paths; some commands for dealing\nwith files; calling external programs and subroutines as\nseparate processes; pipes and redirection of input and\noutput; and error handling.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
    };
  }