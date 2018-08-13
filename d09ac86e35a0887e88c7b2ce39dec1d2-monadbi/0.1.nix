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
        name = "monadbi";
        version = "0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "ajnsit@gmail.com";
      author = "Anupam Jain";
      homepage = "https://github.com/ajnsit/monadbi";
      url = "";
      synopsis = "Extract underlying monads from monad transformers";
      description = "This module provides a Class called @MonadBi@ which acts as a superset\nof @MonadTrans@, and provides @raise@ analogous to @lift@,\ni.e. lifts underlying monads into the transformer. It also provides\n@lower@ which is the opposite of @lift@, and extracts underlying monads from monad transformers.\nGenerally speaking, MonadBi represents the relationship between monads that can be transformed into each other (atleast partially).\nNatural instances are provided for many Monad Transformers.";
      buildType = "Simple";
    };
    components = {
      "monadbi" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
        ];
      };
    };
  }