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
        name = "bmp";
        version = "1.2.6.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "benl@ouroborus.net";
      author = "Ben Lippmeier";
      homepage = "https://github.com/benl23x5/bmp";
      url = "";
      synopsis = "Read and write uncompressed BMP image files.";
      description = "Read and write uncompressed BMP image files. 100% robust Haskell implementation.";
      buildType = "Simple";
    };
    components = {
      "bmp" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
        ];
      };
    };
  }