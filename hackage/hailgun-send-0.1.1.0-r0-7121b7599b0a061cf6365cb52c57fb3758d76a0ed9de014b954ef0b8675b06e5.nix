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
      identifier = { name = "hailgun-send"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "robertmassaioli@gmail.com";
      author = "Robert Massaioli";
      homepage = "";
      url = "";
      synopsis = "A program to send emails throught the Mailgun api.";
      description = "Use this executable to send emails using the Mailgun api's from the command line. You require a configuraiton file\nwith your Mailgun API details to make it work. Please run hailgun-send \\-\\-help for more information.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hailgun-send" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hailgun" or (errorHandler.buildDepError "hailgun"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
          ];
          buildable = true;
        };
      };
    };
  }