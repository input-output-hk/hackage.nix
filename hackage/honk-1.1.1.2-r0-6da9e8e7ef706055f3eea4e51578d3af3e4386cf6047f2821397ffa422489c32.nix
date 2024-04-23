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
      identifier = { name = "honk"; version = "1.1.1.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "lambda.fairy@gmail.com";
      author = "Chris Wong";
      homepage = "https://lfairy.github.com/honk";
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