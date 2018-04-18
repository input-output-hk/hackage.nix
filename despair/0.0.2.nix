{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "despair";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Heather Cynede <Cynede@Gentoo.org>";
        author = "Heather Cynede";
        homepage = "";
        url = "";
        synopsis = "Despair";
        description = "Despair";
        buildType = "Simple";
      };
      components = {
        despair = {
          depends  = [
            hsPkgs.base
            hsPkgs.random
          ];
        };
      };
    }