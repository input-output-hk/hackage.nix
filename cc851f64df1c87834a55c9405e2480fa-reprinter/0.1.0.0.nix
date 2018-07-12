{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "reprinter";
          version = "0.1.0.0";
        };
        license = "Apache-2.0";
        copyright = "";
        maintainer = "d.a.orchard@kent.ac.uk";
        author = "Dominic Orchard, Harry Clarke";
        homepage = "";
        url = "";
        synopsis = "Scrap Your Reprinter";
        description = "A datatype generic algorithm for layout-preserving refactoring";
        buildType = "Simple";
      };
      components = {
        "reprinter" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.transformers
            hsPkgs.syb
            hsPkgs.uniplate
            hsPkgs.mtl
            hsPkgs.syz
          ];
        };
      };
    }