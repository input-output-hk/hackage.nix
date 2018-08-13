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
      specVersion = "1.6";
      identifier = {
        name = "temporal-music-notation";
        version = "0.2.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<anton.kholomiov@gmail.com>";
      author = "Anton Kholomiov";
      homepage = "https://github.com/anton-k/temporal-music-notation";
      url = "";
      synopsis = "music notation";
      description = "Library for expressing musical ideas. Includes composable score representation, microsound tunings, flexible pitch and volume control.";
      buildType = "Simple";
    };
    components = {
      "temporal-music-notation" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.data-default)
          (hsPkgs.temporal-media)
        ];
      };
    };
  }