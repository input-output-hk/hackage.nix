{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "gemstone";
        version = "0.2.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "cds@corbinsimpson.com";
      author = "Corbin Simpson";
      homepage = "http://corbinsimpson.com/";
      url = "";
      synopsis = "A simple library of helpers for SDL+GL games.";
      description = "Gemstone helps you build games.\n\nThe main goal of Gemstone is to build a library of datatypes, combinators,\nand utilities for building general games. Gemstone differentiates itself\nfrom other game libraries by being lens-based.";
      buildType = "Simple";
    };
    components = {
      "gemstone" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.FTGL)
          (hsPkgs.OpenGL)
          (hsPkgs.SDL)
          (hsPkgs.SDL-image)
          (hsPkgs.array)
          (hsPkgs.bitmap)
          (hsPkgs.bitmap-opengl)
          (hsPkgs.containers)
          (hsPkgs.lens)
          (hsPkgs.linear)
          (hsPkgs.random)
          (hsPkgs.stb-image)
          (hsPkgs.transformers)
        ];
      };
    };
  }