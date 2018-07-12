{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-auth-token-persistent";
          version = "0.6.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Anton Gushcha";
        maintainer = "ncrashed@gmail.com";
        author = "NCrashed";
        homepage = "https://github.com/ncrashed/servant-auth-token#readme";
        url = "";
        synopsis = "Persistent backend for servant-auth-token server";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "servant-auth-token-persistent" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson-injector
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.monad-control
            hsPkgs.mtl
            hsPkgs.persistent
            hsPkgs.persistent-template
            hsPkgs.servant-server
            hsPkgs.servant-auth-token
            hsPkgs.servant-auth-token-api
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.uuid
          ];
        };
      };
    }