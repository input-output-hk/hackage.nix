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
        name = "atomic-modify";
        version = "0.1.0.0";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin <ch.martin@gmail.com>";
      author = "Chris Martin <ch.martin@gmail.com>";
      homepage = "https://github.com/chris-martin/haskell-libraries";
      url = "";
      synopsis = "A typeclass for mutable references that have an atomic modify operation.";
      description = "A typeclass for mutable references that have an atomic modify operation. Generalizes atomic modify operations in IO and STM contexts for IORef, MVar, TVar, and TMVar.";
      buildType = "Simple";
    };
    components = {
      "atomic-modify" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.stm)
        ];
      };
    };
  }