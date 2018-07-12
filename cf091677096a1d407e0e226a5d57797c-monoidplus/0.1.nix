{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "monoidplus";
          version = "0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Extra classes/functions about monoids";
        description = "";
        buildType = "Simple";
      };
      components = {
        "monoidplus" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.semigroups
            hsPkgs.contravariant
          ];
        };
      };
    }