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
        name = "QuadTree";
        version = "0.10.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "y30099923@gmail.com";
      author = "Ashley Moni";
      homepage = "";
      url = "";
      synopsis = "QuadTree library for Haskell, with lens support.";
      description = "The purpose of this package is to provide discrete region quadtrees that can be used as effective functional alternatives to 2D arrays, with lens support.";
      buildType = "Simple";
    };
    components = {
      "QuadTree" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.composition)
        ];
      };
    };
  }