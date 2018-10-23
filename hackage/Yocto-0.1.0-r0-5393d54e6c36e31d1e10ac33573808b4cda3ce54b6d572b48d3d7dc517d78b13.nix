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
        name = "Yocto";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "ajg";
      author = "Alvaro J. Genial";
      homepage = "https://github.com/ajg/yocto";
      url = "";
      synopsis = "A Minimal JSON Parser & Printer for Haskell";
      description = "Hassle-free, fast, lossless encoding & decoding of JSON.";
      buildType = "Simple";
    };
    components = {
      "Yocto" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.parsec)
        ];
      };
    };
  }