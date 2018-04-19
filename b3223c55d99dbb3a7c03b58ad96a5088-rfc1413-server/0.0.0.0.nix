{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rfc1413-server";
          version = "0.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Kevin Cotrone";
        maintainer = "kevincotrone@gmail.com";
        author = "Kevin Cotrone";
        homepage = "https://github.com/cotrone/rfc1413-server#readme";
        url = "";
        synopsis = "rfc1413 server";
        description = "Haskell implementation of a user space rfc1413 server";
        buildType = "Simple";
      };
      components = {
        rfc1413-server = {
          depends  = [
            hsPkgs.base
            hsPkgs.network-simple
            hsPkgs.rfc1413-types
          ];
        };
      };
    }