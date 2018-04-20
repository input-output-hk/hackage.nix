{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
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
        acme-all-monad = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
          ];
        };
      };
    }