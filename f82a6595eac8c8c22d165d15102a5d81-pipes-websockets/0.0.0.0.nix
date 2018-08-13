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
      specVersion = "1.10";
      identifier = {
        name = "pipes-websockets";
        version = "0.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 Parnell Springmeyer <parnell@ixmat.us>";
      maintainer = "parnell@ixmat.us";
      author = "Parnell Springmeyer";
      homepage = "https://github.com/ixmatus/pipes-websockets";
      url = "http://hackage.haskell.org/package/pipes-websockets";
      synopsis = "Library for using websockets ontop of pipes-network.";
      description = "A pipes helper library on-top of pipes-network for receiving and responding to websocket connections.";
      buildType = "Simple";
    };
    components = {
      "pipes-websockets" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.pipes-websockets)
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
    };
  }