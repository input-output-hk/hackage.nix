{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "rebindable";
        version = "0.1.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Sean Lee <freshdried@gmail.com>";
      author = "Sean Lee";
      homepage = "https://github.com/sleexyz/rebindable";
      url = "";
      synopsis = "A library to facilitate rebinding of Haskell syntax";
      description = "A library to facilitate rebinding of Haskell syntax";
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