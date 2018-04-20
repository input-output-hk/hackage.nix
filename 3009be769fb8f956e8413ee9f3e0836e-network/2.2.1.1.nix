{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "network";
          version = "2.2.1.1";
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