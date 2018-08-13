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
      specVersion = "1.18";
      identifier = {
        name = "beam-th";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2016 Tobias Markus <tobias AT miglix DOT eu>";
      maintainer = "Tobias Markus <tobias AT miglix DOT eu>";
      author = "Tobias Markus <tobias AT miglix DOT eu>";
      homepage = "https://github.com/hesiod/beam-th";
      url = "";
      synopsis = "Template Haskell utilities for beam";
      description = "(Completely optional) Template Haskell functions\nto derive common boilerplate code when writing table types\nfor the <https://hackage.haskell.org/package/beam beam> library.";
      buildType = "Simple";
    };
    components = {
      "beam-th" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.th-expand-syns)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.beam)
          (hsPkgs.microlens)
        ];
      };
      tests = {
        "test-beam-th" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.beam-th)
            (hsPkgs.beam)
            (hsPkgs.text)
            (hsPkgs.template-haskell)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
          ];
        };
        "doctest-beam-th" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.doctest-discover)
          ];
        };
      };
    };
  }