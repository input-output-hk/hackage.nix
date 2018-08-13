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
        name = "sdl2-fps";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Joe Vargas";
      maintainer = "Joe Vargas";
      author = "";
      homepage = "https://github.com/jxv/sdl2-fps#readme";
      url = "";
      synopsis = "Run of the mill, frames per second timer implementation";
      description = "Run of the mill, frames per second timer implementation";
      buildType = "Simple";
    };
    components = {
      "sdl2-fps" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.sdl2)
        ];
      };
    };
  }