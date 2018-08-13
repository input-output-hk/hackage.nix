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
      specVersion = "1.4";
      identifier = {
        name = "reversi";
        version = "0.1";
      };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "guiocavalcanti@gmail.com";
      author = "Guilherme Cavalcanti";
      homepage = "";
      url = "";
      synopsis = "Text-only reversi (aka othelo) game";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "reversi" = {
          depends  = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.process)
          ];
        };
      };
    };
  }