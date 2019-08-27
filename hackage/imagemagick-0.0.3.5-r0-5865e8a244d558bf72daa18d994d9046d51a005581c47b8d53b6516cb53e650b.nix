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
        };
      exes = {
        "resize" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
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
          };
        "extent" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
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
          };
        "floodfill" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
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
          };
        "cyclops" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
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
          };
        "clipmask" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
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
          };
        "paint-trans" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
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
          };
        "round-mask" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
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
          };
        "make-tile" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
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
          };
        "draw-shapes" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
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
          };
        "text-effects" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
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
          };
        "gel" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
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
          };
        "reflect" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
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
          };
        "3dlogo" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
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
          };
        "affine" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
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
          };
        "grayscale" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
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
          };
        "modulate" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
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
          };
        "landscape3d" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
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
          };
        "tilt-shift" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
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
          };
        "bunny" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
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
          };
        "pixel-mod" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
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
          };
        "wandtest" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
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
          };
        };
      };
    }