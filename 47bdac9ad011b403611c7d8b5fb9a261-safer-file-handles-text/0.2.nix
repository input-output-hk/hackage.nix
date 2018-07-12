{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "safer-file-handles-text";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2010 Bas van Dijk";
        maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
        author = "Bas van Dijk";
        homepage = "";
        url = "";
        synopsis = "Extends safer-file-handles with Text operations";
        description = "Extends @safer-file-handles@ with @Text@ operations";
        buildType = "Custom";
      };
      components = {
        "safer-file-handles-text" = {
          depends  = [
            hsPkgs.text
            hsPkgs.regions
            hsPkgs.transformers
            hsPkgs.explicit-iomodes-text
            hsPkgs.safer-file-handles
          ];
        };
      };
    }