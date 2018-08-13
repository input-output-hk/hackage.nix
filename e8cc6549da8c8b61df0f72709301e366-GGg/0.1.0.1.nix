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
        name = "GGg";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "carterhinsley@gmail.com";
      author = "Carter Hinsley";
      homepage = "https://github.com/xnil/GGg";
      url = "";
      synopsis = "GGg cipher";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "GGg" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bimap)
          ];
        };
      };
    };
  }