{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "mezzolens";
          version = "0.0.0";
        };
        license = "Apache-2.0";
        copyright = "Copyright (C) 2015 Russell O'Connor";
        maintainer = "Russell O'Connor <roconnor@theorem.ca>";
        author = "Russell O'Connor";
        homepage = "";
        url = "";
        synopsis = "Pure Profunctor Functional Lenses";
        description = "If you are looking for a modify operator, like @(%~)@, there isn't one.\nProfunctor lenses can be directly used to modify values.\nIf @l@ is an optic, then you can write @l (+1)@.";
        buildType = "Simple";
      };
      components = {
        "mezzolens" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.mtl
          ];
        };
      };
    }