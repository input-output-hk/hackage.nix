{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
      description = "Stream frames from an encoded video, or stream frames to\na video output file. To read the first frame from\nan @h264@-encoded file into a JuicyPixels\n@Maybe DynamicImage@,\n\n> import Codec.FFmpeg\n> import Codec.Picture\n> import Control.Applicative\n>\n> go :: IO (Maybe DynamicImage)\n> go = do (getFrame, cleanup) <- imageReader \"myVideo.mov\"\n>         (fmap ImageRGB8 <\$> getFrame) <* cleanup\n\nTested with FFmpeg 3.1 - 3.4.2";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        pkgconfig = [
          (pkgconfPkgs."libavutil" or ((hsPkgs.pkgs-errors).pkgConfDepError "libavutil"))
          (pkgconfPkgs."libavformat" or ((hsPkgs.pkgs-errors).pkgConfDepError "libavformat"))
          (pkgconfPkgs."libavcodec" or ((hsPkgs.pkgs-errors).pkgConfDepError "libavcodec"))
          (pkgconfPkgs."libswscale" or ((hsPkgs.pkgs-errors).pkgConfDepError "libswscale"))
          (pkgconfPkgs."libavdevice" or ((hsPkgs.pkgs-errors).pkgConfDepError "libavdevice"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      exes = {
        "demo" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
            ] ++ (pkgs.lib).optionals (flags.builddemo) [
            (hsPkgs."ffmpeg-light" or ((hsPkgs.pkgs-errors).buildDepError "ffmpeg-light"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ];
          buildable = if !flags.builddemo then false else true;
          };
        "raster" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
            ] ++ (pkgs.lib).optionals (flags.buildrasterdemo) [
            (hsPkgs."ffmpeg-light" or ((hsPkgs.pkgs-errors).buildDepError "ffmpeg-light"))
            (hsPkgs."Rasterific" or ((hsPkgs.pkgs-errors).buildDepError "Rasterific"))
            ];
          buildable = if !flags.buildrasterdemo then false else true;
          };
        "vplay" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."monad-loops" or ((hsPkgs.pkgs-errors).buildDepError "monad-loops"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ] ++ (pkgs.lib).optionals (flags.buildvplaydemo) [
            (hsPkgs."ffmpeg-light" or ((hsPkgs.pkgs-errors).buildDepError "ffmpeg-light"))
            (hsPkgs."sdl2" or ((hsPkgs.pkgs-errors).buildDepError "sdl2"))
            ];
          buildable = if !flags.buildvplaydemo then false else true;
          };
        "transcode" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
            ] ++ (pkgs.lib).optional (flags.buildtranscodedemo) (hsPkgs."ffmpeg-light" or ((hsPkgs.pkgs-errors).buildDepError "ffmpeg-light"));
          buildable = if !flags.buildtranscodedemo then false else true;
          };
        };
      };
    }