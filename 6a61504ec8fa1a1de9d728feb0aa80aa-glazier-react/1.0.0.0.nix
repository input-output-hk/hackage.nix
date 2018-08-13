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
        name = "glazier-react";
        version = "1.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Louis Pan";
      maintainer = "louis@pan.me";
      author = "Louis Pan";
      homepage = "https://github.com/louispan/glazier-react#readme";
      url = "";
      synopsis = "ReactJS binding using Glazier.Command.";
      description = "ReactJS binding using Glazier.Commmand. Please see README.md.";
      buildType = "Simple";
    };
    components = {
      "glazier-react" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.alternators)
          (hsPkgs.containers)
          (hsPkgs.data-diverse)
          (hsPkgs.data-diverse-lens)
          (hsPkgs.deepseq)
          (hsPkgs.dlist)
          (hsPkgs.glazier)
          (hsPkgs.javascript-extras)
          (hsPkgs.lens)
          (hsPkgs.lens-misc)
          (hsPkgs.mtl)
          (hsPkgs.newtype-generics)
          (hsPkgs.stm)
          (hsPkgs.tagged)
          (hsPkgs.transformers)
          (hsPkgs.unliftio)
          (hsPkgs.unliftio-core)
        ] ++ pkgs.lib.optional (compiler.isGhcjs && true) (hsPkgs.ghcjs-base)) ++ pkgs.lib.optional (!(compiler.isGhcjs && true)) (hsPkgs.ghcjs-base-stub);
      };
    };
  }