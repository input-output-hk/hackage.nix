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
        name = "acme-all-monad";
        version = "0.1.0.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "paf31@cantab.net";
      author = "Phil Freeman";
      homepage = "";
      url = "";
      synopsis = "A monad which is powerful enough to interpret any action";
      description = "This package defines the @‘All’@ monad and the corresponding monad transformer. The @‘All’@ monad is powerful enough to interpret any monadic action, as demonstrated by the @‘MonadAll’@ type class instance.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
        ];
      };
    };
  }