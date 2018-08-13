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
        name = "imprevu";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Corentin Dupont";
      maintainer = "Corentin Dupont";
      author = "Corentin Dupont";
      homepage = "http://www.nomyx.net";
      url = "";
      synopsis = "Reactive programming language based on a DSL";
      description = "A DSL to express events";
      buildType = "Simple";
    };
    components = {
      "imprevu" = {
        depends  = [
          (hsPkgs.DebugTraceHelpers)
          (hsPkgs.Boolean)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.lens)
          (hsPkgs.ghc)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.random)
          (hsPkgs.safe)
          (hsPkgs.time)
          (hsPkgs.time-recurrence)
          (hsPkgs.monad-loops)
          (hsPkgs.aeson)
          (hsPkgs.stm)
          (hsPkgs.validation)
          (hsPkgs.semigroups)
          (hsPkgs.shortcut)
          (hsPkgs.NoTrace)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Imprevu)
            (hsPkgs.Cabal)
          ];
        };
      };
    };
  }