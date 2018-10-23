{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "statistics-fusion";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Don Stewart 2008,";
      maintainer = "dons@galois.com";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/statistics-fusion";
      url = "";
      synopsis = "High performance, minimal statistics package using stream fusion";
      description = "High performance, minimal statistics package using stream fusion";
      buildType = "Simple";
    };
    components = {
      "statistics-fusion" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.uvector)
        ];
      };
    };
  }