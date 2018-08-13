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
        name = "congruence-relation";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "jon@jonmsterling.com";
      author = "Jonathan Sterling";
      homepage = "";
      url = "";
      synopsis = "Decidable congruence relations for Haskell: up to you whether this is a joke";
      description = "The laws of 'Eq' only require that you have a decidable equivalence relation defined on a type; they do not force you to guarantee abstraction with respect to the relation, i.e. you can write anti-extensional operations without violating the laws. This package provides an alternative for when functionality with respect to an equivalence relation is desired.";
      buildType = "Simple";
    };
    components = {
      "congruence-relation" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.array)
        ];
      };
    };
  }