{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "htlset";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "kelemzol@elte.hu";
        author = "Zoltan Kelemen";
        homepage = "https://github.com/kelemzol/htlset";
        url = "";
        synopsis = "Heterogenous Set";
        description = "HtsSet is a Heterogenous Set wich can provide storing values with different type.";
        buildType = "Simple";
      };
      components = {
        "htlset" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }