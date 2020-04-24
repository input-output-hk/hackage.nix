{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."colour" or ((hsPkgs.pkgs-errors).buildDepError "colour"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."friday" or ((hsPkgs.pkgs-errors).buildDepError "friday"))
          (hsPkgs."friday-devil" or ((hsPkgs.pkgs-errors).buildDepError "friday-devil"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
          (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
          ] ++ (pkgs.lib).optional (!flags.nocapture && system.isLinux) (hsPkgs."v4l2" or ((hsPkgs.pkgs-errors).buildDepError "v4l2"));
        buildable = true;
        };
      exes = {
        "color-counter" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."colour" or ((hsPkgs.pkgs-errors).buildDepError "colour"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."friday" or ((hsPkgs.pkgs-errors).buildDepError "friday"))
            (hsPkgs."friday-devil" or ((hsPkgs.pkgs-errors).buildDepError "friday-devil"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
            (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
            ] ++ (pkgs.lib).optional (!flags.nocapture && system.isLinux) (hsPkgs."v4l2" or ((hsPkgs.pkgs-errors).buildDepError "v4l2"));
          buildable = true;
          };
        };
      };
    }