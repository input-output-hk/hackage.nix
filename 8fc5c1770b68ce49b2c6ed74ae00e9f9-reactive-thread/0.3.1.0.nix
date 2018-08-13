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
        name = "reactive-thread";
        version = "0.3.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "strager.nds@gmail.com";
      author = "Matt \"strager\" Glazar";
      homepage = "https://github.com/strager/reactive-thread";
      url = "";
      synopsis = "Reactive programming via imperative threads";
      description = "Reactive programming with threads.";
      buildType = "Simple";
    };
    components = {
      "reactive-thread" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.monad-parallel)
          (hsPkgs.SDL)
          (hsPkgs.stm)
          (hsPkgs.transformers)
        ];
      };
    };
  }