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
    flags = {
      builddemo = false;
      buildrasterdemo = false;
      buildvplaydemo = false;
      buildtranscodedemo = false;
    };
    package = {
      specVersion = "1.10";
      identifier = { name = "ffmpeg-light"; version = "0.12.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2018 Anthony Cowley";
      maintainer = "acowley@gmail.com";
      author = "Anthony Cowley";
      homepage = "http://github.com/acowley/ffmpeg-light";
      url = "";
      synopsis = "Minimal bindings to the FFmpeg library.";
      description = "Stream frames from an encoded video, or stream frames to\na video output file. To read the first frame from\nan @h264@-encoded file into a JuicyPixels\n@Maybe DynamicImage@,\n\n> import Codec.FFmpeg\n> import Codec.Picture\n> import Control.Applicative\n>\n> go :: IO (Maybe DynamicImage)\n> go = do (getFrame, cleanup) <- imageReader \"myVideo.mov\"\n>         (fmap ImageRGB8 <$> getFrame) <* cleanup\n\nTested with FFmpeg 3.1 - 3.4.2";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        pkgconfig = [
          (pkgconfPkgs."libavutil" or (errorHandler.pkgConfDepError "libavutil"))
          (pkgconfPkgs."libavformat" or (errorHandler.pkgConfDepError "libavformat"))
          (pkgconfPkgs."libavcodec" or (errorHandler.pkgConfDepError "libavcodec"))
          (pkgconfPkgs."libswscale" or (errorHandler.pkgConfDepError "libswscale"))
          (pkgconfPkgs."libavdevice" or (errorHandler.pkgConfDepError "libavdevice"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
      exes = {
        "demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          ] ++ pkgs.lib.optionals (flags.builddemo) [
            (hsPkgs."ffmpeg-light" or (errorHandler.buildDepError "ffmpeg-light"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = if !flags.builddemo then false else true;
        };
        "raster" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          ] ++ pkgs.lib.optionals (flags.buildrasterdemo) [
            (hsPkgs."ffmpeg-light" or (errorHandler.buildDepError "ffmpeg-light"))
            (hsPkgs."Rasterific" or (errorHandler.buildDepError "Rasterific"))
          ];
          buildable = if !flags.buildrasterdemo then false else true;
        };
        "vplay" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ] ++ pkgs.lib.optionals (flags.buildvplaydemo) [
            (hsPkgs."ffmpeg-light" or (errorHandler.buildDepError "ffmpeg-light"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
          ];
          buildable = if !flags.buildvplaydemo then false else true;
        };
        "transcode" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          ] ++ pkgs.lib.optional (flags.buildtranscodedemo) (hsPkgs."ffmpeg-light" or (errorHandler.buildDepError "ffmpeg-light"));
          buildable = if !flags.buildtranscodedemo then false else true;
        };
      };
    };
  }