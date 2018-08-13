{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "graphicsFormats";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thomas Davie (tom.davie@gmail.com)";
      author = "Thomas Davie";
      homepage = "";
      url = "";
      synopsis = "Classes for renderable objects.";
      description = "Classes for renderable objects.";
      buildType = "Simple";
    };
    components = {
      "graphicsFormats" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.QuickCheck)
          (hsPkgs.OpenGL)
        ];
      };
    };
  }