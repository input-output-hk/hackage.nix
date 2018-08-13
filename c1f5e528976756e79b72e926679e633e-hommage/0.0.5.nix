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
        version = "0.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<None>";
      author = "Daniel van den Eijkel <dvde@gmx.net>";
      homepage = "";
      url = "";
      synopsis = "Haskell Offline Music Manipulation And Generation EDSL";
      description = "HOMMAGE is the successor of the Haskell Sound Lib.\n<http://substitut-fuer-feinmotorik.net/projects/haskellommage/introduction>";
      buildType = "Simple";
    };
    components = {
      "hommage" = {
        depends  = [
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