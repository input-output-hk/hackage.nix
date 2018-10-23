{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      builddemo = false;
      buildrasterdemo = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ffmpeg-light";
        version = "0.9.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2014 Anthony Cowley";
      maintainer = "acowley@gmail.com";
      author = "Anthony Cowley";
      homepage = "";
      url = "";
      synopsis = "Minimal bindings to the FFmpeg library.";
      description = "Stream frames from an encoded video, or stream frames to\na video output file. To read the first frame from\nan @h264@-encoded file into a JuicyPixels\n@Maybe DynamicImage@,\n\n> import Codec.FFmpeg\n> import Codec.Picture\n> import Control.Applicative\n>\n> go :: IO (Maybe DynamicImage)\n> go = do (getFrame, cleanup) <- imageReader \"myVideo.mov\"\n>         (fmap ImageRGB8 <\$> getFrame) <* cleanup\n\nTested on OS X 10.9.4 with <http://www.ffmpeg.org FFmpeg> 2.3\ninstalled via <http://brew.sh homebrew>.";
      buildType = "Simple";
    };
    components = {
      "ffmpeg-light" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.either)
          (hsPkgs.exceptions)
          (hsPkgs.vector)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.JuicyPixels)
        ];
        pkgconfig = [
          (pkgconfPkgs.libavutil)
          (pkgconfPkgs.libavformat)
          (pkgconfPkgs.libavcodec)
          (pkgconfPkgs.libswscale)
          (pkgconfPkgs.libavdevice)
        ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
      exes = {
        "demo" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.JuicyPixels)
          ] ++ pkgs.lib.optionals (flags.builddemo) [
            (hsPkgs.ffmpeg-light)
            (hsPkgs.time)
          ];
        };
        "raster" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.JuicyPixels)
          ] ++ pkgs.lib.optionals (flags.buildrasterdemo) [
            (hsPkgs.ffmpeg-light)
            (hsPkgs.Rasterific)
          ];
        };
      };
    };
  }