let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "imagemagick"; version = "0.0.3.1"; };
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
          (hsPkgs."MonadCatchIO-transformers" or (buildDepError "MonadCatchIO-transformers"))
          ];
        pkgconfig = [
          (pkgconfPkgs."ImageMagick" or (pkgConfDepError "ImageMagick"))
          (pkgconfPkgs."MagickWand" or (pkgConfDepError "MagickWand"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      exes = {
        "resize" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or (buildDepError "imagemagick"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (pkgConfDepError "MagickWand"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "extent" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or (buildDepError "imagemagick"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (pkgConfDepError "MagickWand"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "floodfill" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or (buildDepError "imagemagick"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (pkgConfDepError "MagickWand"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "cyclops" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or (buildDepError "imagemagick"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (pkgConfDepError "MagickWand"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "clipmask" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or (buildDepError "imagemagick"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (pkgConfDepError "MagickWand"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "paint-trans" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or (buildDepError "imagemagick"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (pkgConfDepError "MagickWand"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "round-mask" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or (buildDepError "imagemagick"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (pkgConfDepError "MagickWand"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "make-tile" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or (buildDepError "imagemagick"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (pkgConfDepError "MagickWand"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "draw-shapes" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or (buildDepError "imagemagick"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (pkgConfDepError "MagickWand"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "text-effects" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or (buildDepError "imagemagick"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (pkgConfDepError "MagickWand"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "gel" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            (hsPkgs."imagemagick" or (buildDepError "imagemagick"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (pkgConfDepError "MagickWand"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "reflect" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or (buildDepError "imagemagick"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (pkgConfDepError "MagickWand"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "3dlogo" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or (buildDepError "imagemagick"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (pkgConfDepError "MagickWand"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "affine" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or (buildDepError "imagemagick"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (pkgConfDepError "MagickWand"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "grayscale" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or (buildDepError "imagemagick"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (pkgConfDepError "MagickWand"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "modulate" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or (buildDepError "imagemagick"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (pkgConfDepError "MagickWand"))
            ];
          buildable = false;
          };
        "landscape3d" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or (buildDepError "imagemagick"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (pkgConfDepError "MagickWand"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "tilt-shift" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or (buildDepError "imagemagick"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (pkgConfDepError "MagickWand"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "bunny" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or (buildDepError "imagemagick"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (pkgConfDepError "MagickWand"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "pixel-mod" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or (buildDepError "imagemagick"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (pkgConfDepError "MagickWand"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "wandtest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or (buildDepError "imagemagick"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (pkgConfDepError "MagickWand"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        };
      tests = {
        "image-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."imagemagick" or (buildDepError "imagemagick"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            ];
          pkgconfig = [
            (pkgconfPkgs."ImageMagick" or (pkgConfDepError "ImageMagick"))
            (pkgconfPkgs."MagickWand" or (pkgConfDepError "MagickWand"))
            ];
          buildable = true;
          };
        };
      };
    }