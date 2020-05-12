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
      identifier = { name = "honk"; version = "1.1.1.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "chrisyco@gmail.com";
      author = "Chris Wong";
      homepage = "https://github.com/chrisyco/honk";
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