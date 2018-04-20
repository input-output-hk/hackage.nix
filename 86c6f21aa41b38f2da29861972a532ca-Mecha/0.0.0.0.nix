{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Mecha";
          version = "0.0.0.0";
        };
        license = "BSD-2-Clause";
        copyright = "";
        maintainer = "carter at wellposed dot com";
        author = "Carter Tazio Schonwald";
        homepage = "http://github.com/cartazio/mecha";
        url = "";
        synopsis = "mecha are the most complex composite machines known to humanity, lets build them well!";
        description = "";
        buildType = "Simple";
      };
      components = {
        Mecha = {
          depends  = [
            hsPkgs.base
            hsPkgs.machines
          ];
        };
      };
    }