{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      internal-documentation = false;
    };
    package = {
      specVersion = "1.23";
      identifier = {
        name = "opencv";
        version = "0.0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Roel van Dijk <roel@lambdacube.nl>, Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Roel van Dijk <roel@lambdacube.nl>, Bas van Dijk <v.dijk.bas@gmail.com>";
      homepage = "https://github.com/LumiGuide/haskell-opencv";
      url = "";
      synopsis = "Haskell binding to OpenCV-3.x";
      description = "<<https://raw.githubusercontent.com/LumiGuide/haskell-opencv/master/data/haskell-opencv-logo-200x82.png>>\n\nThis is a Haskell library providing a binding to OpenCV-3.x.\nIt binds directly with the C++ API using the @inline-c@ Haskell library.\n\nThe library is far from complete but the framework is there to easily\nbind missing functionality.\n\nNote that the OpenCV contrib modules are provided by\n<http://hackage.haskell.org/package/opencv-extra opencv-extra>.\n\nMake sure to checkout the\n<https://github.com/LumiGuide/haskell-opencv/tree/master/opencv-examples opencv-examples>.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bindings-DSL)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.deepseq)
          (hsPkgs.inline-c)
          (hsPkgs.inline-c-cpp)
          (hsPkgs.JuicyPixels)
          (hsPkgs.linear)
          (hsPkgs.primitive)
          (hsPkgs.repa)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.vector)
        ];
        libs = [ (pkgs."stdc++") ];
        pkgconfig = [
          (pkgconfPkgs.opencv)
        ];
      };
      tests = {
        "doc-images-opencv" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.Glob)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.JuicyPixels)
            (hsPkgs.linear)
            (hsPkgs.opencv)
            (hsPkgs.primitive)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.vector)
          ];
        };
        "test-opencv" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.lens)
            (hsPkgs.linear)
            (hsPkgs.opencv)
            (hsPkgs.QuickCheck)
            (hsPkgs.repa)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.transformers)
            (hsPkgs.vector)
          ];
        };
      };
      benchmarks = {
        "bench-opencv" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.opencv)
            (hsPkgs.repa)
          ];
        };
      };
    };
  }