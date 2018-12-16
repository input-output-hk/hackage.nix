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
      specVersion = "1.8";
      identifier = {
        name = "imprevu-happstack";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Corentin Dupont";
      maintainer = "Corentin Dupont";
      author = "Corentin Dupont";
      homepage = "http://www.nomyx.net";
      url = "";
      synopsis = "Imprevu support for Happstack";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.DebugTraceHelpers)
          (hsPkgs.imprevu)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.lens)
          (hsPkgs.ghc)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.blaze-html)
          (hsPkgs.happstack-server)
          (hsPkgs.reform)
          (hsPkgs.reform-blaze)
          (hsPkgs.reform-happstack)
          (hsPkgs.text)
          (hsPkgs.monad-extras)
          (hsPkgs.stm)
          (hsPkgs.safe)
          (hsPkgs.HTTP)
          (hsPkgs.NoTrace)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.imprevu-happstack)
            (hsPkgs.Cabal)
          ];
        };
      };
    };
  }