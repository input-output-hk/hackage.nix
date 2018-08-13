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
      specVersion = "1.6";
      identifier = {
        name = "SDL2-ttf";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Ömer Sinan Ağacan (omeragacan@gmail.com)";
      author = "Ömer Sinan Ağacan (omeragacan@gmail.com)";
      homepage = "";
      url = "";
      synopsis = "Binding to libSDL-ttf";
      description = "TODO";
      buildType = "Simple";
    };
    components = {
      "SDL2-ttf" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.SDL2)
        ];
        libs = [
          (pkgs."SDL2")
          (pkgs."SDL2_ttf")
        ];
      };
    };
  }