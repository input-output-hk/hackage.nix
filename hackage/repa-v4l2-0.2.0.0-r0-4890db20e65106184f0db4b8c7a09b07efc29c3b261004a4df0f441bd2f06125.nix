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
      identifier = { name = "repa-v4l2"; version = "0.2.0.0"; };
      license = "LicenseRef-LGPL";
      copyright = "2011-2012, Christian Gosch";
      maintainer = "Christian Gosch <github@goschs.de>";
      author = "Christian Gosch";
      homepage = "https://github.com/cgo/hsimage";
      url = "";
      synopsis = "Provides high-level access to webcams.";
      description = "The current state is that the library provides a monad for\ngrabbing images from a webcam under Linux. In the future, more functionality like\nimage processing functions and other input devices may be added.\nIf anyone wants to help, please contact me!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."v4l2" or (errorHandler.buildDepError "v4l2"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."bmp" or (errorHandler.buildDepError "bmp"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            (hsPkgs."repa-v4l2" or (errorHandler.buildDepError "repa-v4l2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
          ];
          buildable = true;
        };
      };
    };
  }