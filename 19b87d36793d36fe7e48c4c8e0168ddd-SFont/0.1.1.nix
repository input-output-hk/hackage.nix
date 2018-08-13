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
        name = "SFont";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "liamoc@cse.unsw.edu.au";
      author = "Liam O'Connor-Davis";
      homepage = "http://liamoc.net/static/SFont";
      url = "";
      synopsis = "SFont SDL Bitmap Fonts";
      description = "A haskell port of Karl Bartel's bitmap SFont library. Haddock documentation is available from the homepage";
      buildType = "Simple";
    };
    components = {
      "SFont" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.SDL)
          (hsPkgs.Sprig)
          (hsPkgs.array)
        ];
      };
    };
  }