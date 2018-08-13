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
        name = "layered-state";
        version = "1.1.2";
      };
      license = "Apache-2.0";
      copyright = "Copyright (C) 2018 Luna Team";
      maintainer = "Wojciech Danilo <wojciech.danilo@luna-lang.org>";
      author = "Luna Team";
      homepage = "https://github.com/luna/layered-state";
      url = "";
      synopsis = "Control structure similar to Control.Monad.State, allowing multiple nested states, distinguishable by provided phantom types.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "layered-state" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.constraints)
          (hsPkgs.data-default)
          (hsPkgs.exceptions)
          (hsPkgs.lens)
          (hsPkgs.lens-utils)
          (hsPkgs.monad-branch)
          (hsPkgs.monoid)
          (hsPkgs.mtl)
          (hsPkgs.primitive)
          (hsPkgs.profunctors)
          (hsPkgs.prologue)
          (hsPkgs.transformers)
          (hsPkgs.typelevel)
        ];
      };
      benchmarks = {
        "layered-state-benchmark" = {
          depends  = [
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.either)
            (hsPkgs.kan-extensions)
            (hsPkgs.layered-state)
            (hsPkgs.mtl-c)
            (hsPkgs.timeit)
          ];
        };
      };
    };
  }