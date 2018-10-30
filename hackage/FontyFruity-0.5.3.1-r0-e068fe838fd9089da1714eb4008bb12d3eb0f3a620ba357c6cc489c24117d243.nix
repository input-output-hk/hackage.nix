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
        name = "FontyFruity";
        version = "0.5.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "vincent.berthoux@gmail.com";
      author = "Vincent Berthoux";
      homepage = "";
      url = "";
      synopsis = "A true type file format loader";
      description = "A haskell Truetype file parser.\n\nYou can load a font file and extract some curves to be\ndrawed with a library like Rasterific .";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.vector)
          (hsPkgs.directory)
          (hsPkgs.text)
          (hsPkgs.filepath)
          (hsPkgs.deepseq)
        ];
      };
    };
  }