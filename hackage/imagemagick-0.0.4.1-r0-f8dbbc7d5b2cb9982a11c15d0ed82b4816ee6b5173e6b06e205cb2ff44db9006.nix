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
      identifier = { name = "imagemagick"; version = "0.0.4.1"; };
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
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."MonadCatchIO-transformers" or (errorHandler.buildDepError "MonadCatchIO-transformers"))
        ];
        pkgconfig = [
          (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
          (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
      exes = {
        "resize" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."imagemagick" or (errorHandler.buildDepError "imagemagick"))
          ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "extent" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."imagemagick" or (errorHandler.buildDepError "imagemagick"))
          ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "floodfill" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."imagemagick" or (errorHandler.buildDepError "imagemagick"))
          ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "cyclops" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."imagemagick" or (errorHandler.buildDepError "imagemagick"))
          ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "clipmask" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."imagemagick" or (errorHandler.buildDepError "imagemagick"))
          ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "paint-trans" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."imagemagick" or (errorHandler.buildDepError "imagemagick"))
          ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "round-mask" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."imagemagick" or (errorHandler.buildDepError "imagemagick"))
          ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "make-tile" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."imagemagick" or (errorHandler.buildDepError "imagemagick"))
          ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "draw-shapes" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."imagemagick" or (errorHandler.buildDepError "imagemagick"))
          ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "text-effects" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."imagemagick" or (errorHandler.buildDepError "imagemagick"))
          ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "gel" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
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
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."imagemagick" or (errorHandler.buildDepError "imagemagick"))
          ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "3dlogo" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."imagemagick" or (errorHandler.buildDepError "imagemagick"))
          ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "affine" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."imagemagick" or (errorHandler.buildDepError "imagemagick"))
          ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "grayscale" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."imagemagick" or (errorHandler.buildDepError "imagemagick"))
          ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "modulate" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."imagemagick" or (errorHandler.buildDepError "imagemagick"))
          ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
          ];
          buildable = false;
        };
        "landscape3d" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."imagemagick" or (errorHandler.buildDepError "imagemagick"))
          ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "tilt-shift" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."imagemagick" or (errorHandler.buildDepError "imagemagick"))
          ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "bunny" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."imagemagick" or (errorHandler.buildDepError "imagemagick"))
          ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "pixel-mod" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."imagemagick" or (errorHandler.buildDepError "imagemagick"))
          ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (errorHandler.pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (errorHandler.pkgConfDepError "MagickWand"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
        "wandtest" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
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
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."imagemagick" or (errorHandler.buildDepError "imagemagick"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
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