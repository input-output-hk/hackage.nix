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
      identifier = { name = "timeprint"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "iareloser@gmail.com";
      author = "Justin Chen";
      homepage = "";
      url = "";
      synopsis = "Prints timestamps after each line evaluated";
      description = "Prints timestamps after each line evaluated in 'ghci'.\n\nUse by adding `-interactive-print=Text.Show.TimePrint.timePrint` to the 'ghci' command, or add this to your '.ghci' file:\n\n`import qualified Text.Show.TimePrint\n:set -interactive-print=Text.Show.TimePrint.timePrint`";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."datetime" or (errorHandler.buildDepError "datetime"))
          ];
        buildable = true;
        };
      };
    }