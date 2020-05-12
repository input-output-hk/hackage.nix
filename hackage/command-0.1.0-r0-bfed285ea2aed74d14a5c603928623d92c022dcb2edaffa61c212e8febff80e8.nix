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
      identifier = { name = "command"; version = "0.1.0"; };
      license = "MIT";
      copyright = "Neil Mitchell 2011-2013";
      maintainer = "Niklas Hambüchen <mail@nh2.me>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "https://github.com/nh2/command";
      url = "";
      synopsis = "Conveniently run shell commands";
      description = "This is a standalone version of the powerful and intuitive command line\nfunctions present in the Shake build system.\n\nThey are intended as an easy-to-remember, easy-to-use alternative\nto the System.Process functions.\n\nAll credit goes to the Shake author!\nI hope he'll take it over as a standalone project.\n\nCHANGELOG\n\nVersion 0.1.0\n\n* Initial version, copied from Shake.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
        buildable = true;
        };
      };
    }