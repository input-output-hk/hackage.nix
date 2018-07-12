{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-auth-token";
          version = "0.4.4.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Anton Gushcha";
        maintainer = "ncrashed@gmail.com";
        author = "NCrashed";
        homepage = "https://github.com/ncrashed/servant-auth-token#readme";
        url = "";
        synopsis = "Servant based API and server for token based authorisation";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "servant-auth-token" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson-injector
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.pwstore-fast
            hsPkgs.servant-auth-token-api
            hsPkgs.servant-server
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.uuid
          ];
        };
      };
    }