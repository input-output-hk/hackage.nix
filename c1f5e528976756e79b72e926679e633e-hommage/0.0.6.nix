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
        name = "hommage";
        version = "0.0.6";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Daniel van den Eijkel <dvde@gmx.net>";
      homepage = "";
      url = "";
      synopsis = "Haskell Offline Music Manipulation And Generation EDSL";
      description = "";
      buildType = "Simple";
    };
    components = {
      "hommage" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.array)
          (hsPkgs.haskell98)
          (hsPkgs.random)
          (hsPkgs.time)
        ];
      };
    };
  }