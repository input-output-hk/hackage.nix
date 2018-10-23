{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "repa-v4l2";
        version = "0.2.0.0";
      };
      license = "LicenseRef-LGPL";
      copyright = "2011-2012, Christian Gosch";
      maintainer = "Christian Gosch <github@goschs.de>";
      author = "Christian Gosch";
      homepage = "https://github.com/cgo/hsimage";
      url = "";
      synopsis = "Provides high-level access to webcams.";
      description = "The current state is that the library provides a monad for\ngrabbing images from a webcam under Linux. In the future, more functionality like\nimage processing functions and other input devices may be added.\nIf anyone wants to help, please contact me!";
      buildType = "Simple";
    };
    components = {
      "repa-v4l2" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.repa)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.v4l2)
          (hsPkgs.mtl)
          (hsPkgs.vector)
          (hsPkgs.bmp)
          (hsPkgs.bytestring)
        ];
      };
      exes = {
        "example" = {
          depends  = [
            (hsPkgs.gloss)
            (hsPkgs.repa-v4l2)
            (hsPkgs.base)
            (hsPkgs.repa)
          ];
        };
      };
    };
  }