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
        name = "glazier";
        version = "1.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Louis Pan";
      maintainer = "louis@pan.me";
      author = "Louis Pan";
      homepage = "https://github.com/louispan/glazier#readme";
      url = "";
      synopsis = "Extensible effects using ContT, State and variants.";
      description = "Interpreting commmands with extensible effects using Cont/Concur monad, State, and variants.";
      buildType = "Simple";
    };
    components = {
      "glazier" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.alternators)
          (hsPkgs.data-diverse)
          (hsPkgs.data-diverse-lens)
          (hsPkgs.dlist)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.unliftio)
          (hsPkgs.unliftio-core)
        ];
      };
      tests = {
        "glazier-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.alternators)
            (hsPkgs.glazier)
            (hsPkgs.data-diverse)
            (hsPkgs.data-diverse-lens)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.dlist)
            (hsPkgs.transformers)
            (hsPkgs.unliftio)
            (hsPkgs.unliftio-core)
            (hsPkgs.stm)
            (hsPkgs.tagged)
          ];
        };
      };
    };
  }