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
    flags = { builddraft = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "patch-image"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://hub.darcs.net/thielema/patch-image/";
      url = "";
      synopsis = "Compose a big image from overlapping parts";
      description = "Compose a collage from overlapping image parts.\nIn contrast to Hugin,\nthis is not intended for creating panoramas from multiple photographies,\nbut instead is specialised to creating highly accurate reconstructions\nof flat but big image sources, like record covers, posters or newspapers.\nIt solves the problem that your scanner may be too small\nto capture a certain image as a whole.\n\nThis is the workflow:\nScan parts of an image that considerably overlap.\nThey must all be approximately oriented correctly.\nThe program uses the overlapping areas for reconstruction\nof the layout of the parts.\nIf all parts are in the directory @part@\nthen in the best case you can simply run:\n\n> patch-image --output=collage.jpeg part/*.jpeg\n\nIf you get blurred areas,\nyou might enable an additional rotation correction:\n\n> patch-image --finetune-rotate --output=collage.jpeg part/*.jpeg\n\nIt follows an overview of how the program works.\nIt implies some things you should care about when using the program.\n\nThe program runs three phases:\n\n* Orientate each image part individually\n\n* Find overlapping areas in the parts\nand reconstruct the part positions within the big image\n\n* Blend the parts in order to get the big image\n\nThe first phase orientates each part\nsuch that horizontal structures become perfectly aligned.\nOnly the brightness channel of the image is analysed.\nHorizontal structures can be text or the border of the image.\nThis also means that you should orientate the parts\nhorizontally, not vertically.\nI also recommend not to mix horizontal and vertical scanned parts\nsince the horizontal and vertical resolution of your scanner\nmight differ slightly.\nHowever, it should be fine to rotate the image source by 180°\nand rotate it back digitally,\nbefore feeding it to the patch-image program.\n\nOptions for the first phase:\n\n* @--maximum-absolute-angle@:\nMaximum angle to test for.\n\n* @--number-angles@:\nNumber of angles minus one\nto test between negative and positive maximum angle.\n\n* @--hint-angle@:\nIf the search for horizontal structures\ndoes not yield satisfying results for an image part,\nyou may prepend the @--hint-angle@ option with the wanted angle\nto the image path.\n\nIn the second phase the program looks\nfor overlapping parts between all pairs of images.\nFor every pair it computes a convolution via a Fourier transform.\nOnly the brightness channel of the image is analysed.\n\n* @--pad-size@:\nComputing a convolution of two big images may exceed your graphics memory.\nTo this end, images are shrunk before convolution.\nThe pad size is the size in pixels after shrinking\nthat holds 2x2 shrunken image parts.\nAfter determination of the distance between the shrunken parts\nthe matching is repeated on a non-reduced clip of the original image part,\nin order to get precise coordinates.\n\n* @--minimum-overlap@:\nThere must be a minimum of overlap\nin order to accept that the images actually overlap.\nThe overlap is measured as a portion of the image part size.\n\n* @--maximum-difference@:\nThe maximum allowed mean difference\nwithin an overlapping area of two overlapping images.\nIf the difference is larger,\nthen the program assumes that the parts do not overlap.\n\n* @--smooth@:\nIt is important to eliminate a brightness offset,\nthat is, big black and big white areas should be handled equally.\nTo this end the image is smoothed\nand the smoothed image is subtracted from the original one.\nThis option allows to specify the degree (radius) of the smoothing.\nI don't think you ever need to touch this parameter.\n\n* @--output-overlap@:\nWrites images for all pairs of image parts.\nThese images allow you to diagnose\nwhere the matching algorithm failed.\nIt may help you to adjust the matching parameters.\nIn the future we might add an option to ignore problematic pairs.\n\nSince in the first phase every image part is oriented individually\nit may happen that the part orientations don't match.\nThis would result in blurred areas in the final collage.\nIn order to correct this,\nyou can run phase two in an extended mode,\nthat also re-evaluates the part orientations.\nThe orientation of the composed image is then determined\nby the estimated orientation of the first image.\n\nOptions:\n\n* @--finetune-rotate@:\nEnables the extended overlapping mode.\nThe option @--output-overlap@ will then be ignored.\n\n* @--number-stamps@:\nThe extended mode selects many small clips in the overlapping area\nand tries to match them.\nWe call these clips /stamps/.\nThis option controls the number of stamps per overlapping area minus one.\n\n* @--stamp-size@:\nSize of a square stamp in pixels.\n\nThe third phase composes a big image from the parts.\nThe parts are weighted such that the part boundaries cannot be seen anymore\nand differences in brightness are faded into another.\nThe downside is that the superposition may lead to blur.\n\nOptions:\n\n* @--output@:\nPath of the output JPEG image with the weighted collage.\n\n* @--output-hard@:\nAlternative output of a JPEG collage\nwhere the image parts are simply averaged.\nYou will certainly see bumps in brightness\nat the borders of the image parts.\nThis output may be mostly useful to promote the great weighting algorithm\nemployed by @--output@.\n\n* @--output-distance-map@:\nThe weight for every pixel is chosen according to the distance\nto an image part boundary that lies within other parts.\nThe rationale is that the weight shall become zero\nwhen the pixel is close to a position\nthat will be affected by a disruption otherwise.\nThis option allows to emit the distance map for every image part.\n\n* @--distance-gamma@:\nIf the distances are used for weighting as they are,\nthe program fades evenly between the overlapping image parts\nover the entire overapping area.\nThis may mean that the overlapping area is blurred.\nRaising the distance to a power greater than one reduces the area of blur.\nThe downside is that it also reduces the area for adaption\nof differing brightness.\n\n* @--quality@:\nJPEG quality percentage for writing the images.\n\nRestrictions:\n\n* Only supports JPEG format.\n\n* Images must be approximately correctly oriented.\n\n* May have problems with unstructured areas in the image.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "patch-image" = {
          depends = [
            (hsPkgs."accelerate-fourier" or (errorHandler.buildDepError "accelerate-fourier"))
            (hsPkgs."accelerate-arithmetic" or (errorHandler.buildDepError "accelerate-arithmetic"))
            (hsPkgs."accelerate-utility" or (errorHandler.buildDepError "accelerate-utility"))
            (hsPkgs."accelerate-cufft" or (errorHandler.buildDepError "accelerate-cufft"))
            (hsPkgs."accelerate-cuda" or (errorHandler.buildDepError "accelerate-cuda"))
            (hsPkgs."accelerate-io" or (errorHandler.buildDepError "accelerate-io"))
            (hsPkgs."accelerate" or (errorHandler.buildDepError "accelerate"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."gnuplot" or (errorHandler.buildDepError "gnuplot"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
        "patch-image-draft" = {
          depends = pkgs.lib.optionals (flags.builddraft) [
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."GeomAlgLib" or (errorHandler.buildDepError "GeomAlgLib"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.builddraft then true else false;
        };
      };
    };
  }