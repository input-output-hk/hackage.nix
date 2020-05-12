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
    flags = { nocapture = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "color-counter"; version = "0.1.2.1"; };
      license = "MIT";
      copyright = "(c) 2016 Brian W Bush";
      maintainer = "Brian W Bush <consult@brianwbush.info>";
      author = "Brian W Bush <consult@brianwbush.info>";
      homepage = "https://bitbucket.org/functionally/color-counter";
      url = "https://bitbucket.org/functinally/color-counter/downloads/color-counter-0.1.2.1.tar.gz";
      synopsis = "Count colors in images";
      description = "This Haskell package contains functions for counting colors in images, either from a file or a camera feed.  The input image must in a standard format like JPEG or PNG.  The analyze function outputs the RGB and CIE-LAB values for each pixel, along with the color detected there.  The tally function outputs a histogram of the colors detected.  The quantize function outputs an image where the pixels have been replaced by the colors detected there.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."friday" or (errorHandler.buildDepError "friday"))
          (hsPkgs."friday-devil" or (errorHandler.buildDepError "friday-devil"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ] ++ (pkgs.lib).optional (!flags.nocapture && system.isLinux) (hsPkgs."v4l2" or (errorHandler.buildDepError "v4l2"));
        buildable = true;
        };
      exes = {
        "color-counter" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."friday" or (errorHandler.buildDepError "friday"))
            (hsPkgs."friday-devil" or (errorHandler.buildDepError "friday-devil"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            ] ++ (pkgs.lib).optional (!flags.nocapture && system.isLinux) (hsPkgs."v4l2" or (errorHandler.buildDepError "v4l2"));
          buildable = true;
          };
        };
      };
    }