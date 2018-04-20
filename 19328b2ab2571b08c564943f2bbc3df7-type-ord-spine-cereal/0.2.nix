{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6.0.1";
        identifier = {
          name = "type-ord-spine-cereal";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Nicolas Frisby <nicolas.frisby@gmail.com>";
        author = "Nicolas Frisby <nicolas.frisby@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Generic type-level comparison of types";
        description = "Generic type-level comparison of @type-spine@- and\n@type-cereal@-enabled types. See the @yoko@ package's \\\"Data.Yoko.HCompos\\\"\nand \\\"Data.Yoko.TH\\\" modules for a (rather large) use case.";
        buildType = "Simple";
      };
      components = {
        type-ord-spine-cereal = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.type-spine
            hsPkgs.type-cereal
            hsPkgs.type-ord
          ];
        };
      };
    }