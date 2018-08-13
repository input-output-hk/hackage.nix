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
        name = "frp-arduino";
        version = "0.1.0.3";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "ricli85@gmail.com";
      author = "Rickard Lindberg";
      homepage = "http://github.com/frp-arduino/frp-arduino";
      url = "";
      synopsis = "Arduino programming without the hassle of C.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "frp-arduino" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.containers)
        ];
      };
    };
  }