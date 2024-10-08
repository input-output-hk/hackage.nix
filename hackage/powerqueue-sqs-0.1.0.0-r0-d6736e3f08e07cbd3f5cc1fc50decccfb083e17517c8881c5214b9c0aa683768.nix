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
      identifier = { name = "powerqueue-sqs"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Alexander Thiemann <mail@athiemann.net>";
      maintainer = "mail@athiemann.net";
      author = "Alexander Thiemann";
      homepage = "https://github.com/agrafix/powerqueue#readme";
      url = "";
      synopsis = "A Amazon SQS backend for powerqueue";
      description = "A Amazon SQS backend for powerqueue";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."powerqueue" or (errorHandler.buildDepError "powerqueue"))
          (hsPkgs."aws-simple" or (errorHandler.buildDepError "aws-simple"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."timespan" or (errorHandler.buildDepError "timespan"))
        ];
        buildable = true;
      };
    };
  }