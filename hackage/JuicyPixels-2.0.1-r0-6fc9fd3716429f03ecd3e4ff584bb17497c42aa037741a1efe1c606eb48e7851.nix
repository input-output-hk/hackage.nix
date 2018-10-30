{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "JuicyPixels";
        version = "2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "vincent.berthoux@gmail.com";
      author = "Vincent Berthoux";
      homepage = "https://github.com/Twinside/Juicy.Pixels";
      url = "";
      synopsis = "Picture loading/serialization (in png, jpeg, bitmap and gif)";
      description = "This library can load and store images in PNG/Bitmap and Jpeg, and\nread Gif images.\n\nVersion 2.0.1 changelog:\n\n* Documentation enhancements.\n\n* Fixing some huge gif file loading.\n\n* Fixing performance problem of Bitmap and Jpeg savings.\n\nVersion 2.0 changelog:\n\n* New extractComponent version with type safe plane\nextraction\n\n* Gif file reading\n\nVersion 1.3 changelog:\n\n* Fix extractComponent function\n\n* Adding saving for YA8 functions\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.cereal)
          (hsPkgs.zlib)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          (hsPkgs.primitive)
          (hsPkgs.deepseq)
        ];
      };
    };
  }