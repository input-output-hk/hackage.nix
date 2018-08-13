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
        name = "rebindable";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Sean Lee <freshdried@gmail.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "A library to facilitate rebinding of Haskell syntax";
      description = "";
      buildType = "Simple";
    };
    components = {
      "rebindable" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.data-default-class)
          (hsPkgs.indexed)
        ];
      };
    };
  }