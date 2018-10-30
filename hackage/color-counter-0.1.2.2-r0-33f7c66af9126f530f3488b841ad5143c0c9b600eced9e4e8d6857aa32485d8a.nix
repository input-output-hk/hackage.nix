{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { nocapture = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "color-counter";
        version = "0.1.2.2";
      };
      license = "MIT";
      copyright = "(c) 2016 Brian W Bush";
      maintainer = "Brian W Bush <consult@brianwbush.info>";
      author = "Brian W Bush <consult@brianwbush.info>";
      homepage = "https://bitbucket.org/functionally/color-counter";
      url = "https://bitbucket.org/functinally/color-counter/downloads/color-counter-0.1.2.2.tar.gz";
      synopsis = "Count colors in images";
      description = "This Haskell package contains functions for counting colors in images, either from a file or a camera feed.  The input image must in a standard format like JPEG or PNG.  The analyze function outputs the RGB and CIE-LAB values for each pixel, along with the color detected there.  The tally function outputs a histogram of the colors detected.  The quantize function outputs an image where the pixels have been replaced by the colors detected there.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.colour)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.friday)
          (hsPkgs.friday-devil)
          (hsPkgs.split)
          (hsPkgs.vector)
          (hsPkgs.vector-space)
          (hsPkgs.yaml)
        ] ++ pkgs.lib.optional (!flags.nocapture && system.isLinux) (hsPkgs.v4l2);
      };
      exes = {
        "color-counter" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.colour)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.friday)
            (hsPkgs.friday-devil)
            (hsPkgs.split)
            (hsPkgs.vector)
            (hsPkgs.vector-space)
            (hsPkgs.yaml)
          ] ++ pkgs.lib.optional (!flags.nocapture && system.isLinux) (hsPkgs.v4l2);
        };
      };
    };
  }