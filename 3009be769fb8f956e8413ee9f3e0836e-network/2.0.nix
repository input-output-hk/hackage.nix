{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "network";
          version = "2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "libraries@haskell.org";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Networking-related facilities";
        description = "";
        buildType = "Custom";
      };
      components = {
        network = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
          ];
        };
      };
    }