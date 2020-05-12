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
      identifier = { name = "canteven-log"; version = "0.2.0.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "rowens@sumall.com";
      author = "Rick Owens";
      homepage = "https://github.com/SumAll/haskell-canteven-log";
      url = "";
      synopsis = "A canteven way of setting up logging for your program.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."canteven-config" or (errorHandler.buildDepError "canteven-config"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ];
        buildable = true;
        };
      };
    }