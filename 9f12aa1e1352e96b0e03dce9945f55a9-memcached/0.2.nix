{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "memcached";
          version = "0.2";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "Janrain <hackage@janrain.com>";
        author = "Evan Martin <martine@danga.com>";
        homepage = "http://github.com/olegkat/haskell-memcached";
        url = "";
        synopsis = "haskell bindings for memcached";
        description = "haskell bindings for memcached";
        buildType = "Simple";
      };
      components = {
        "memcached" = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.bytestring
            hsPkgs.utf8-light
          ];
        };
      };
    }