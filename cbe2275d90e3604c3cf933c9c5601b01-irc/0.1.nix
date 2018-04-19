{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "irc";
          version = "0.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "trevor@geekgateway.com";
        author = "Trevor Elliott";
        homepage = "";
        url = "";
        synopsis = "A small library for parsing IRC messages";
        description = "";
        buildType = "Custom";
      };
      components = {
        irc = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.parsec
          ];
        };
      };
    }