{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "symantic-lib"; version = "0.0.4.20180831"; };
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
      "library" = {
        depends = [
          (hsPkgs.symantic)
          (hsPkgs.symantic-grammar)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mono-traversable)
          (hsPkgs.transformers)
          (hsPkgs.text)
          ];
        };
      tests = {
        "symantic-test" = {
          depends = [
            (hsPkgs.symantic)
            (hsPkgs.symantic-grammar)
            (hsPkgs.symantic-lib)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.megaparsec)
            (hsPkgs.monad-classes)
            (hsPkgs.mono-traversable)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }