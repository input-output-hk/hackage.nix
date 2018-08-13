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
      specVersion = "1.24";
      identifier = {
        name = "symantic-lib";
        version = "0.0.2.20170623";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Julien Moutinho <julm+symantic@autogeree.net>";
      author = "Julien Moutinho <julm+symantic@autogeree.net>";
      homepage = "";
      url = "";
      synopsis = "Symantics for common types.";
      description = "Symantics for common types,\nusing <https://hackage.haskell.org/package/symantic symantic>.";
      buildType = "Simple";
    };
    components = {
      "symantic-lib" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.ghc-prim)
          (hsPkgs.monad-classes)
          (hsPkgs.mono-traversable)
          (hsPkgs.symantic)
          (hsPkgs.symantic-grammar)
          (hsPkgs.transformers)
          (hsPkgs.text)
        ];
      };
      tests = {
        "symantic-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.megaparsec)
            (hsPkgs.monad-classes)
            (hsPkgs.mono-traversable)
            (hsPkgs.symantic-grammar)
            (hsPkgs.symantic)
            (hsPkgs.symantic-lib)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
        "ebnf" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.megaparsec)
            (hsPkgs.symantic-grammar)
            (hsPkgs.symantic)
            (hsPkgs.symantic-lib)
            (hsPkgs.transformers)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
          ];
        };
      };
    };
  }