{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = {
        name = "symantic-grammar";
        version = "0.3.0.20180213";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Julien Moutinho <julm+symantic@autogeree.net>";
      author = "Julien Moutinho <julm+symantic@autogeree.net>";
      homepage = "";
      url = "";
      synopsis = "Library for symantic grammars.";
      description = "This library defines an embedded DSL for regular or context-free grammars,\nin the <http://okmij.org/ftp/tagless-final/ Tagless-Final> way (aka. the /symantic/ way).\n\nSee @Test.hs@ or source code of <https://hackage.haskell.org/package/symantic symantic>\nand <https://hackage.haskell.org/package/symantic-lib symantic-lib> for examples of use.";
      buildType = "Simple";
    };
    components = {
      "symantic-grammar" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
        ];
      };
      tests = {
        "symantic-grammar-test" = {
          depends  = [
            (hsPkgs.symantic-grammar)
            (hsPkgs.base)
            (hsPkgs.megaparsec)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }