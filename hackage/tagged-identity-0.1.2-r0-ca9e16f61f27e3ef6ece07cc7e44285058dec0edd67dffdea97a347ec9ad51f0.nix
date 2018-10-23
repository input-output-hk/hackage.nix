{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { dev = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "tagged-identity";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mark Karpov <markkarpov92@gmail.com>";
      author = "Mark Karpov <markkarpov92@gmail.com>";
      homepage = "https://github.com/mrkkrp/tagged-identity";
      url = "";
      synopsis = "Trivial monad transformer that allows identical monad stacks have different types";
      description = "Trivial monad transformer that allows identical monad stacks have different types.";
      buildType = "Simple";
    };
    components = {
      "tagged-identity" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
        ];
      };
    };
  }