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
        name = "boxes";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "byorgey@cis.upenn.edu";
      author = "Brent Yorgey";
      homepage = "http://code.haskell.org/~byorgey/code/boxes";
      url = "";
      synopsis = "2D text pretty-printing library";
      description = "A pretty-printing library for laying out text in\ntwo dimensions, using a simple box model.";
      buildType = "Simple";
    };
    components = {
      "boxes" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.split)
        ];
      };
    };
  }