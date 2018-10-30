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
      specVersion = "1.6";
      identifier = {
        name = "JuicyPixels";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "vincent.berthoux@gmail.com";
      author = "Vincent Berthoux";
      homepage = "https://github.com/Twinside/Juicy.Pixels";
      url = "";
      synopsis = "Picture loading/serialization (in png, jpeg and bitmap)";
      description = "This library can load and store images in various image formats,\nfor now mainly in PNG/Bitmap and Jpeg (jpeg writing not\nimplemented yet though)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.cereal)
          (hsPkgs.zlib)
          (hsPkgs.transformers)
        ];
      };
    };
  }