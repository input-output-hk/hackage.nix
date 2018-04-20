{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "unliftio-pool";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Bardur Arantsson <bardur@scientician.net>";
        author = "Bardur Arantsson";
        homepage = "";
        url = "";
        synopsis = "Data.Pool generalized to MonadUnliftIO.";
        description = "This is a generalization of Data.Pool to MonadUnliftIO.";
        buildType = "Simple";
      };
      components = {
        unliftio-pool = {
          depends  = [
            hsPkgs.base
            hsPkgs.resource-pool
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unliftio-core
          ];
        };
      };
    }