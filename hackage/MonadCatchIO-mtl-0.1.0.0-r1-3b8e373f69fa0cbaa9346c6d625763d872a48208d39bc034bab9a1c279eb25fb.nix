{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { base3 = false; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "MonadCatchIO-mtl";
        version = "0.1.0.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "jcpetruzza@gmail.com";
      author = "";
      homepage = "http://code.haskell.org/~jcpetruzza/MonadCatchIO-mtl";
      url = "";
      synopsis = "Monad-transformer version of the Control.Exception module";
      description = "Provides a monad-transformer version of the @Control.Exception.catch@\nfunction. For this, it defines the @MonadCatchIO@ class, a subset of\n@MonadIO@. It defines proper instances for most monad transformers in\nthe 'mtl' library.";
      buildType = "Simple";
    };
    components = {
      "MonadCatchIO-mtl" = {
        depends  = [ (hsPkgs.mtl) ] ++ [
          (hsPkgs.base)
          (hsPkgs.base)
        ];
      };
    };
  }