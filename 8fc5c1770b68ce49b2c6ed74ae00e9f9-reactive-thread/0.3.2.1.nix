{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      profile = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "reactive-thread";
        version = "0.3.2.1";
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
          (hsPkgs.stm)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "example-sdl" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.monad-parallel)
            (hsPkgs.reactive-thread)
            (hsPkgs.SDL)
            (hsPkgs.stm)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }