{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "MaybeT-transformers";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Erik Hesselink <hesselink@gmail.com>";
      author = "Erik Hesselink <hesselink@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "MaybeT monad transformer using transformers instead of mtl.";
      description = "Support for computations with failures. This\npackage is a fork from the MaybeT package by Eric\nKidd, changed to depend on transformers instead\nof mtl. It also adds a few more utility\nfunctions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.monads-fd)
          (hsPkgs.transformers)
        ];
      };
    };
  }