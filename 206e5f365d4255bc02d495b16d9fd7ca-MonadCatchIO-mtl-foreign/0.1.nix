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
      specVersion = "1.6";
      identifier = {
        name = "MonadCatchIO-mtl-foreign";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "aslatter@gmail.com";
      author = "Antoine Latter";
      homepage = "";
      url = "";
      synopsis = "Polymorphic combinators for working with foreign functions";
      description = "Functions like 'alloca' are provided, except not restricted\nto 'IO'.";
      buildType = "Simple";
    };
    components = {
      "MonadCatchIO-mtl-foreign" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.MonadCatchIO-mtl)
          (hsPkgs.mtl)
        ] ++ pkgs.lib.optional (compiler.isGhc && true) (hsPkgs.primitive);
      };
    };
  }