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
      specVersion = "1.6";
      identifier = {
        name = "data-ref";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://wiki.haskell.org/Mutable_variable";
      url = "";
      synopsis = "Unify STRef and IORef in plain Haskell 98";
      description = "This package provides a unique interface to both STRef and IORef.\nThe advantage is that it is plain Haskell 98,\nthe disadvantage is that we cannot use STRef and IORef as they are.\n\nOur approach works with Haskell 98 single parameter type classes\nbecause we use an explicit dictionary,\nand we do not pass the references around but their accessors.\n\nSimilar packages: @reference@, @ref-mtl@, @ref-fd@, @ref-tf@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.transformers)
          (hsPkgs.stm)
          (hsPkgs.base)
        ];
      };
    };
  }