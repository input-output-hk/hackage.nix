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
    flags = { builddemo = false; buildrasterdemo = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ffmpeg-light"; version = "0.8.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2014 Anthony Cowley";
      maintainer = "acowley@gmail.com";
      author = "Anthony Cowley";
      homepage = "";
      url = "";
      synopsis = "Minimal bindings to the FFmpeg library.";
      description = "Stream frames from an encoded video, or stream frames to\na video output file. To read the first frame from\nan @h264@-encoded file into a JuicyPixels\n@Maybe DynamicImage@,\n\n> import Codec.FFmpeg\n> import Codec.Picture\n> import Control.Applicative\n>\n> go :: IO (Maybe DynamicImage)\n> go = do (getFrame, cleanup) <- imageReader \"myVideo.mov\"\n>         (fmap ImageRGB8 <$> getFrame) <* cleanup\n\nTested on OS X 10.9.4 with <http://www.ffmpeg.org FFmpeg> 2.3\ninstalled via <http://brew.sh homebrew>.";
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
        ];
        pkgconfig = [
          (pkgconfPkgs."libavutil" or (errorHandler.pkgConfDepError "libavutil"))
          (pkgconfPkgs."libavformat" or (errorHandler.pkgConfDepError "libavformat"))
          (pkgconfPkgs."libavcodec" or (errorHandler.pkgConfDepError "libavcodec"))
          (pkgconfPkgs."libswscale" or (errorHandler.pkgConfDepError "libswscale"))
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
          ] ++ pkgs.lib.optional (flags.builddemo) (hsPkgs."ffmpeg-light" or (errorHandler.buildDepError "ffmpeg-light"));
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
      };
    };
  }