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
      specVersion = "1.2";
      identifier = {
        name = "rwlock";
        version = "0.0.0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <james.cook@usma.edu>";
      author = "James Cook <james.cook@usma.edu>";
      homepage = "http://code.haskell.org/~mokus/rwlock";
      url = "";
      synopsis = "Multiple-read / single-write locks";
      description = "A simple implementation of a multiple-reader / single-writer\nlock, using STM.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.monad-loops)
          (hsPkgs.stm)
        ];
      };
    };
  }