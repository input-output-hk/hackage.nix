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
      specVersion = "1.8";
      identifier = {
        name = "magma";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "cutsea110@gmail.com";
      author = "Katsutoshi Itoh";
      homepage = "https://github.com/cutsea110/magma";
      url = "";
      synopsis = "magma is an algebraic structure consisting a set together with an binary operation.";
      description = "magma is an algebraic structure consisting a set together with an binary operation.";
      buildType = "Simple";
    };
    components = {
      "magma" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.profunctors)
          (hsPkgs.semigroups)
          (hsPkgs.deepseq)
        ];
      };
    };
  }