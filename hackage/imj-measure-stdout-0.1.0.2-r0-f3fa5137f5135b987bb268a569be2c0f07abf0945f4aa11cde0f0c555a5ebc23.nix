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
      identifier = { name = "imj-measure-stdout"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2017 - 2018 Olivier Sohn";
      maintainer = "olivier.sohn@gmail.com";
      author = "Olivier Sohn";
      homepage = "https://github.com/OlivierSohn/hamazed/blob/master/imj-measure-stdout/README.md";
      url = "";
      synopsis = "An application to determine the maximum capacity of stdout buffer.";
      description = "The program helps you determine the maximum capacity of your stdout buffer.\n\nIt was initially developped to diagnose screen tearing issues\nin a terminal-based game I was developping, and more specifically, to see the\neffect of the following action :\n\n> hSetBuffering stdout $ BlockBuffering $ Just maxBound\n\nUsing this program, I found that, on my system, the previous call quadruples\nstdout's capacity, from 2048 to 8192 bytes.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "imj-measure-stdout-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."imj-prelude" or (errorHandler.buildDepError "imj-prelude"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      };
    }