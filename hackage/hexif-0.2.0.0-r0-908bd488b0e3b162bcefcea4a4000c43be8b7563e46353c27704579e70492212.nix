{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hexif";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Roland Senn, 2014";
      maintainer = "rsx@bluewin.ch";
      author = "Roland Senn";
      homepage = "http://www.github.com/hansroland/hexif";
      url = "";
      synopsis = "Reading Exif data form a JPEG file with Haskell";
      description = "Read and pretty print the Exif data from a JPEG file";
      buildType = "Simple";
    };
    components = {
      "hexif" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
        ];
      };
    };
  }