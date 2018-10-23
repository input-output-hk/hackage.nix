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
        name = "haskell-compression";
        version = "0.2";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "hawk.alan@gmail.com";
      author = "Alan Hawkins";
      homepage = "http://xy30.com";
      url = "";
      synopsis = "compress files";
      description = "A program to compress a file";
      buildType = "Simple";
    };
    components = {
      "haskell-compression" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.bimap)
          (hsPkgs.booleanlist)
        ];
      };
      exes = {
        "hs-compress" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.bimap)
          ];
        };
      };
    };
  }