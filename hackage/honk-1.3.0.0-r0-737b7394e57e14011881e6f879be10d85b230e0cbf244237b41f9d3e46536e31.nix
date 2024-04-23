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
      identifier = { name = "honk"; version = "1.3.0.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "lambda.fairy@gmail.com";
      author = "Chris Wong";
      homepage = "https://lambda.xyz/honk/";
      url = "";
      synopsis = "Cross-platform interface to the PC speaker.";
      description = "A unified, cross-platform interface to the PC speaker.\n\nBeep to your heart's content!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }