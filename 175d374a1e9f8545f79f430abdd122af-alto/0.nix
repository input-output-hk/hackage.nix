{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "alto";
          version = "0";
        };
        license = "BSD-3-Clause";
        copyright = "davean 2018";
        maintainer = "davean@xkcd.com";
        author = "davean";
        homepage = "https://oss.xkcd.com/";
        url = "";
        synopsis = "Implement a menu experience fit for web users.";
        description = "A system for building cloud scale menu systems.\nFor an example, see <https://xkcd.com/1975/ Right Click>.";
        buildType = "Simple";
      };
      components = {
        "alto" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.lens
            hsPkgs.cryptohash-sha256
            hsPkgs.scrypt
            hsPkgs.base64-bytestring
            hsPkgs.aeson
            hsPkgs.servant-server
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.random-string
            hsPkgs.list-tries
            hsPkgs.MonadRandom
            hsPkgs.random
            hsPkgs.exceptions
          ];
        };
        exes = {
          "alto" = {
            depends  = [
              hsPkgs.base
              hsPkgs.alto
              hsPkgs.warp
            ];
          };
        };
      };
    }