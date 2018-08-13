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
        name = "Advgame";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "inforichland@gmail.com";
      author = "Tim Wawrzynczak";
      homepage = "";
      url = "";
      synopsis = "Lisperati's adventure game in Lisp translated to Haskell";
      description = "Dr. Conrad Barski's (Lisperati) adventure game in Lisp translated to Haskell (http://www.lisperati.com/casting.html)";
      buildType = "Simple";
    };
    components = {
      exes = {
        "advgame" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.haskell98)
          ];
        };
      };
    };
  }