{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      builddemo = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ffmpeg-light";
          version = "0.3.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2014 Anthony Cowley";
        maintainer = "acowley@gmail.com";
        author = "Anthony Cowley";
        homepage = "";
        url = "";
        synopsis = "Minimal bindings to the FFmpeg library.";
        description = "Stream frames from an encoded video, or stream frames to\na video output file. To read the first frame from\nan @h264@-encoded file into a JuicyPixels\n@Maybe DynamicImage@,\n\n> import Codec.FFmpeg\n> import Codec.Picture\n> import Control.Applicative\n> import Control.Monad.Trans.Maybe\n>\n> go :: IO (Maybe DynamicImage)\n> go = do (getFrame, cleanup) <- frameReaderT \"myVideo.mov\"\n>         (runMaybeT \$ getFrame >>= toJuicyT) <* cleanup\n\nTested on OS X 10.9.2 with <http://www.ffmpeg.org FFmpeg> 2.2.1\ninstalled via <http://brew.sh homebrew>.";
        buildType = "Simple";
      };
      components = {
        ffmpeg-light = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.JuicyPixels
          ];
        };
        exes = {
          demo = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.ffmpeg-light
              hsPkgs.JuicyPixels
            ];
          };
        };
      };
    }