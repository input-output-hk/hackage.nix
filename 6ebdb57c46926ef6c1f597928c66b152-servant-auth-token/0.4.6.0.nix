{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-auth-token";
          version = "0.4.6.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016-2017 Anton Gushcha";
        maintainer = "ncrashed@gmail.com";
        author = "Anton Gushcha <ncrashed@gmail.com>\n, Ivan Lazar Miljenovic <Ivan.Miljenovic@gmail.com>";
        homepage = "https://github.com/ncrashed/servant-auth-token#readme";
        url = "";
        synopsis = "Servant based API and server for token based authorisation";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        servant-auth-token = {
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