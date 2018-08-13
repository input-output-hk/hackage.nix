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
        name = "stable-marriage";
        version = "0.1.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "cutsea110@gmail.com";
      author = "cutsea110";
      homepage = "http://github.com/cutsea110/stable-marriage";
      url = "";
      synopsis = "algorithms around stable marriage";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "stable-marriage" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
        ];
      };
    };
  }