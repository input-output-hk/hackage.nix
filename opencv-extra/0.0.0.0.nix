{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      internal-documentation = false;
    } // flags;
    in {
      package = {
        specVersion = "1.23";
        identifier = {
          name = "opencv-extra";
          version = "0.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Roel van Dijk <roel@lambdacube.nl>, Bas van Dijk <v.dijk.bas@gmail.com>";
        author = "Roel van Dijk <roel@lambdacube.nl>, Bas van Dijk <v.dijk.bas@gmail.com>";
        homepage = "https://github.com/LumiGuide/haskell-opencv";
        url = "";
        synopsis = "Haskell binding to OpenCV-3.x extra modules";
        description = "";
        buildType = "Custom";
      };
      components = {
        opencv-extra = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-DSL
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.inline-c
            hsPkgs.inline-c-cpp
            hsPkgs.linear
            hsPkgs.opencv
            hsPkgs.primitive
            hsPkgs.template-haskell
            hsPkgs.transformers
            hsPkgs.vector
          ];
          libs = [ pkgs."stdc++" ];
        };
        tests = {
          doc-images-opencv-extra = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.data-default
              hsPkgs.directory
              hsPkgs.Glob
              hsPkgs.haskell-src-exts
              hsPkgs.JuicyPixels
              hsPkgs.linear
              hsPkgs.opencv
              hsPkgs.opencv-extra
              hsPkgs.primitive
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.vector
            ];
          };
        };
      };
    }