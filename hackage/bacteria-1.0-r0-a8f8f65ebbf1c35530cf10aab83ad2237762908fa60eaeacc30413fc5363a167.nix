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
      specVersion = "1.2";
      identifier = { name = "bacteria"; version = "1.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "daniel@wagner-home.com";
      author = "Daniel Wagner";
      homepage = "http://www.dmwit.com/bacteria";
      url = "http://www.dmwit.com/bacteria/bacteria-current.tar.gz";
      synopsis = "braindead utility to compose Xinerama backgrounds";
      description = "Compose a sequence of images by centering them on rectangles the size of the Xinerama screens available.  Supports jpg, png, and gif input, and produces png output.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "bacteria" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gd" or (errorHandler.buildDepError "gd"))
            (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
            ];
          buildable = true;
          };
        };
      };
    }