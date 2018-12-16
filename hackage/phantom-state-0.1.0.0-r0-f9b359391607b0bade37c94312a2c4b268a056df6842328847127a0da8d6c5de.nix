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
      specVersion = "1.10";
      identifier = {
        name = "phantom-state";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dhelta.diaz@gmail.com";
      author = "Daniel Díaz";
      homepage = "";
      url = "";
      synopsis = "Phantom State Monad Transformer. Like State Monad, but without values.";
      description = "A monad transformer that mimics the State Monad Transformer from the\n<http://hackage.haskell.org/package/transformers transformers> package,\nbut dropping the values. In those cases that you want to use the State\nMonad but you only care about how the state changes, use this library\nto earn a plus of efficiency.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
        ];
      };
    };
  }