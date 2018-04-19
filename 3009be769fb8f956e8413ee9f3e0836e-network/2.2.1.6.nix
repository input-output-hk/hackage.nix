{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "network";
          version = "2.2.1.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Johan Tibell <johan.tibell@gmail.com>";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Networking-related facilities";
        description = "";
        buildType = "Configure";
      };
      components = {
        network = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
          ] ++ [ hsPkgs.base ];
        };
      };
    }