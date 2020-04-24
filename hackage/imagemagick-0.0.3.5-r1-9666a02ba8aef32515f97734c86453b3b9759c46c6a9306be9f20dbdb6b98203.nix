{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "imagemagick"; version = "0.0.3.5"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
          (hsPkgs."MonadCatchIO-transformers" or ((hsPkgs.pkgs-errors).buildDepError "MonadCatchIO-transformers"))
          ];
        pkgconfig = [
          (pkgconfPkgs."ImageMagick" or ((hsPkgs.pkgs-errors).pkgConfDepError "ImageMagick"))
          (pkgconfPkgs."MagickWand" or ((hsPkgs.pkgs-errors).pkgConfDepError "MagickWand"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      exes = {
        "resize" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or ((hsPkgs.pkgs-errors).buildDepError "imagemagick"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or ((hsPkgs.pkgs-errors).pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or ((hsPkgs.pkgs-errors).pkgConfDepError "MagickWand"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "extent" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or ((hsPkgs.pkgs-errors).buildDepError "imagemagick"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or ((hsPkgs.pkgs-errors).pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or ((hsPkgs.pkgs-errors).pkgConfDepError "MagickWand"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "floodfill" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or ((hsPkgs.pkgs-errors).buildDepError "imagemagick"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or ((hsPkgs.pkgs-errors).pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or ((hsPkgs.pkgs-errors).pkgConfDepError "MagickWand"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "cyclops" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or ((hsPkgs.pkgs-errors).buildDepError "imagemagick"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or ((hsPkgs.pkgs-errors).pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or ((hsPkgs.pkgs-errors).pkgConfDepError "MagickWand"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "clipmask" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or ((hsPkgs.pkgs-errors).buildDepError "imagemagick"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or ((hsPkgs.pkgs-errors).pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or ((hsPkgs.pkgs-errors).pkgConfDepError "MagickWand"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "paint-trans" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or ((hsPkgs.pkgs-errors).buildDepError "imagemagick"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or ((hsPkgs.pkgs-errors).pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or ((hsPkgs.pkgs-errors).pkgConfDepError "MagickWand"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "round-mask" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or ((hsPkgs.pkgs-errors).buildDepError "imagemagick"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or ((hsPkgs.pkgs-errors).pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or ((hsPkgs.pkgs-errors).pkgConfDepError "MagickWand"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "make-tile" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or ((hsPkgs.pkgs-errors).buildDepError "imagemagick"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or ((hsPkgs.pkgs-errors).pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or ((hsPkgs.pkgs-errors).pkgConfDepError "MagickWand"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "draw-shapes" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or ((hsPkgs.pkgs-errors).buildDepError "imagemagick"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or ((hsPkgs.pkgs-errors).pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or ((hsPkgs.pkgs-errors).pkgConfDepError "MagickWand"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "text-effects" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or ((hsPkgs.pkgs-errors).buildDepError "imagemagick"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or ((hsPkgs.pkgs-errors).pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or ((hsPkgs.pkgs-errors).pkgConfDepError "MagickWand"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "gel" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
            (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
            (hsPkgs."imagemagick" or ((hsPkgs.pkgs-errors).buildDepError "imagemagick"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or ((hsPkgs.pkgs-errors).pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or ((hsPkgs.pkgs-errors).pkgConfDepError "MagickWand"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "reflect" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or ((hsPkgs.pkgs-errors).buildDepError "imagemagick"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or ((hsPkgs.pkgs-errors).pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or ((hsPkgs.pkgs-errors).pkgConfDepError "MagickWand"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "3dlogo" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or ((hsPkgs.pkgs-errors).buildDepError "imagemagick"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or ((hsPkgs.pkgs-errors).pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or ((hsPkgs.pkgs-errors).pkgConfDepError "MagickWand"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "affine" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or ((hsPkgs.pkgs-errors).buildDepError "imagemagick"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or ((hsPkgs.pkgs-errors).pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or ((hsPkgs.pkgs-errors).pkgConfDepError "MagickWand"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "grayscale" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or ((hsPkgs.pkgs-errors).buildDepError "imagemagick"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or ((hsPkgs.pkgs-errors).pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or ((hsPkgs.pkgs-errors).pkgConfDepError "MagickWand"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "modulate" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or ((hsPkgs.pkgs-errors).buildDepError "imagemagick"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or ((hsPkgs.pkgs-errors).pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or ((hsPkgs.pkgs-errors).pkgConfDepError "MagickWand"))
            ];
          buildable = false;
          };
        "landscape3d" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or ((hsPkgs.pkgs-errors).buildDepError "imagemagick"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or ((hsPkgs.pkgs-errors).pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or ((hsPkgs.pkgs-errors).pkgConfDepError "MagickWand"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "tilt-shift" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or ((hsPkgs.pkgs-errors).buildDepError "imagemagick"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or ((hsPkgs.pkgs-errors).pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or ((hsPkgs.pkgs-errors).pkgConfDepError "MagickWand"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "bunny" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or ((hsPkgs.pkgs-errors).buildDepError "imagemagick"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or ((hsPkgs.pkgs-errors).pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or ((hsPkgs.pkgs-errors).pkgConfDepError "MagickWand"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "pixel-mod" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or ((hsPkgs.pkgs-errors).buildDepError "imagemagick"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or ((hsPkgs.pkgs-errors).pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or ((hsPkgs.pkgs-errors).pkgConfDepError "MagickWand"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "wandtest" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or ((hsPkgs.pkgs-errors).buildDepError "imagemagick"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or ((hsPkgs.pkgs-errors).pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or ((hsPkgs.pkgs-errors).pkgConfDepError "MagickWand"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        };
      tests = {
        "image-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or ((hsPkgs.pkgs-errors).buildDepError "imagemagick"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or ((hsPkgs.pkgs-errors).pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or ((hsPkgs.pkgs-errors).pkgConfDepError "MagickWand"))
            ];
          buildable = true;
          };
        };
      };
    }