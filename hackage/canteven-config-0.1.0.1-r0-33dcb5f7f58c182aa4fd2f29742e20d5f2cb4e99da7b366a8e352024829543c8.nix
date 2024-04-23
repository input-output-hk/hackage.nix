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
      identifier = { name = "canteven-config"; version = "0.1.0.1"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "rick@owenssoftware.com";
      author = "Rick Owens";
      homepage = "";
      url = "";
      synopsis = "A pattern for configuring programs.";
      description = "Turns out, all of our executables shared the same sort of\npattern: Parse the command line to locate a config file,\nread and parse the config file, set up `hslogger` based on\nsome stuff found in the config file, and pass the rest of\nthe config to the actual program. This library makes doing\nthat pattern super easy. It is meant to be a rather\nparticular (as opposed to general) solution for this sort\nof problem.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
        ];
        buildable = true;
      };
    };
  }