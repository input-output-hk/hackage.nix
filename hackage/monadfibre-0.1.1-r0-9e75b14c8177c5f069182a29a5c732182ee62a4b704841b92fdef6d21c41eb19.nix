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
      specVersion = "1.2";
      identifier = {
        name = "monadfibre";
        version = "0.1.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "ajnsit@gmail.com";
      author = "Anupam Jain";
      homepage = "";
      url = "";
      synopsis = "This package defines Monadic functions which provide Choice and Parallelism - (<||>) and (<&&>).";
      description = "This package defines Monadic functions which provide Choice and Parallelism - (<||>) and (<&&>)\n- that work on Monads that provide a (MonadBi m ()) instance.\nAlso included is a Class called @MonadBi@ which acts as a superset\nof @MonadTrans@, and provides @raise@ analogous to @lift@ as well\nas @lower@, which goes the other way.\nNatural instances are provided for many Monad Transformers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.stm)
          (hsPkgs.mtl)
        ];
      };
    };
  }