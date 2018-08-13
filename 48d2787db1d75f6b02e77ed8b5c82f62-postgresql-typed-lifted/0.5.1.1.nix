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
        name = "postgresql-typed-lifted";
        version = "0.5.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Evan Cofsky";
      maintainer = "evan@theunixman.com";
      author = "Evan Cofsky";
      homepage = "https://gitlab.com/theunixman/postgresql-typed-lifted";
      url = "";
      synopsis = "postgresql-typed operations lifted to any instance of MonadBase or MonadBaseControl.";
      description = "Provides generalized lifted operations for postgresql-typed. Version numbers track postgresql-typed.";
      buildType = "Simple";
    };
    components = {
      "postgresql-typed-lifted" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.bytestring)
          (hsPkgs.exceptions)
          (hsPkgs.lens)
          (hsPkgs.monad-control)
          (hsPkgs.transformers-base)
          (hsPkgs.postgresql-typed)
        ];
      };
    };
  }