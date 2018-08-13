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
      specVersion = "0";
      identifier = {
        name = "bitset";
        version = "0.6";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Denis Bueno <dbueno@gmail.com>";
      author = "Denis Bueno";
      homepage = "";
      url = "";
      synopsis = "A functional data structure for efficient membership testing.";
      description = "A /bit set/ maintains a record of members from a type that can be mapped\ninto (non-negative) @Int@s.  Supports insertion, deletion, size, and\nmembership testing, and is completely pure (functional).";
      buildType = "Simple";
    };
    components = {
      "bitset" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
        ];
      };
    };
  }