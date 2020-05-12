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
      identifier = { name = "geni-util"; version = "0.25.0"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "eric.kow@gmail.com";
      author = "Eric Kow";
      homepage = "http://kowey.github.io/GenI";
      url = "";
      synopsis = "Companion tools for use with the GenI surface realiser";
      description = "Tools included:\n\n* client - sends all test cases from a GenI suite to geniserver, and saves\nresults in the same format as batch mode GenI\n\n* report - generates an HTML summary of a GenI batch operation";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."GenI" or (errorHandler.buildDepError "GenI"))
          (hsPkgs."geniserver" or (errorHandler.buildDepError "geniserver"))
          (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
          (hsPkgs."http-streams" or (errorHandler.buildDepError "http-streams"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
          ];
        buildable = true;
        };
      exes = {
        "geni-util" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."geni-util" or (errorHandler.buildDepError "geni-util"))
            (hsPkgs."GenI" or (errorHandler.buildDepError "GenI"))
            (hsPkgs."json" or (errorHandler.buildDepError "json"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }