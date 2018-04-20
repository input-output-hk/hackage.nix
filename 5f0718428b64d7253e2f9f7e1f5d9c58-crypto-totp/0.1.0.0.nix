{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "crypto-totp";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "shawjef3@gmail.com";
        author = "Jeff Shaw";
        homepage = "";
        url = "";
        synopsis = "Provides generation and verification services for time-based one-time keys.";
        description = "Please see http://tools.ietf.org/html/rfc6238";
        buildType = "Simple";
      };
      components = {
        crypto-totp = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.unix
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.tagged
            hsPkgs.cryptohash
          ];
        };
      };
    }