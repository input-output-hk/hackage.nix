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
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "imagemagick"; version = "0.0.3.3"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "alexander.vershilov@gmail.com";
      author = "Alexander Vershilov, Kirill Zaborsky";
      homepage = "";
      url = "";
      synopsis = "bindings to imagemagick library";
      description = "Basic image magick bindings.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
          (hsPkgs."MonadCatchIO-transformers" or (errorHandler.buildDepError "MonadCatchIO-transformers"))
        ];
        pkgconfig = [
          (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
          (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
        ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
      exes = {
        "resize" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or (errorHandler.buildDepError "imagemagick"))
          ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "extent" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or (errorHandler.buildDepError "imagemagick"))
          ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "floodfill" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or (errorHandler.buildDepError "imagemagick"))
          ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "cyclops" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or (errorHandler.buildDepError "imagemagick"))
          ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "clipmask" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or (errorHandler.buildDepError "imagemagick"))
          ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "paint-trans" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or (errorHandler.buildDepError "imagemagick"))
          ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "round-mask" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or (errorHandler.buildDepError "imagemagick"))
          ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "make-tile" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or (errorHandler.buildDepError "imagemagick"))
          ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "draw-shapes" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or (errorHandler.buildDepError "imagemagick"))
          ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "text-effects" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or (errorHandler.buildDepError "imagemagick"))
          ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "gel" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
            (hsPkgs."imagemagick" or (errorHandler.buildDepError "imagemagick"))
          ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "reflect" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or (errorHandler.buildDepError "imagemagick"))
          ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "3dlogo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or (errorHandler.buildDepError "imagemagick"))
          ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "affine" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or (errorHandler.buildDepError "imagemagick"))
          ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "grayscale" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or (errorHandler.buildDepError "imagemagick"))
          ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "modulate" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or (errorHandler.buildDepError "imagemagick"))
          ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
          ];
          buildable = false;
        };
        "landscape3d" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or (errorHandler.buildDepError "imagemagick"))
          ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "tilt-shift" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or (errorHandler.buildDepError "imagemagick"))
          ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "bunny" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or (errorHandler.buildDepError "imagemagick"))
          ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "pixel-mod" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or (errorHandler.buildDepError "imagemagick"))
          ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "wandtest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or (errorHandler.buildDepError "imagemagick"))
          ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
      };
      tests = {
        "image-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or (errorHandler.buildDepError "imagemagick"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
          ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
          ];
          buildable = true;
        };
      };
    };
  }