{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "transformers-compose";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2010 Aristid Breitkreuz";
        maintainer = "aristidb@googlemail.com";
        author = "Aristid Breitkreuz";
        homepage = "http://github.com/aristidb/transformers-compose";
        url = "";
        synopsis = "Arrow-like / category-like composition for transformers.";
        description = "Arrow-like / category-like composition for transformers.";
        buildType = "Simple";
      };
      components = {
        "transformers-compose" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
          ];
        };
      };
    }