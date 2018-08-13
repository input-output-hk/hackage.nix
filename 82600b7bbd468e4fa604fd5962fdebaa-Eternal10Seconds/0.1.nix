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
        name = "Eternal10Seconds";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "kryozahiro@gmail.com";
      author = "kryozahiro, gugugu, RE-Ya!";
      homepage = "http://www.kryozahiro.org/eternal10/";
      url = "";
      synopsis = "A 2-D shooting game";
      description = "A 2-D shooting game";
      buildType = "Simple";
    };
    components = {
      exes = {
        "Eternal10Seconds" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.SDL)
            (hsPkgs.SDL-mixer)
          ];
        };
      };
    };
  }