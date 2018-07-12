{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "graphene";
          version = "0.1.0.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "bkovach13@gmail.com";
        author = "Benjamin Kovach";
        homepage = "https://github.com/5outh/graphene";
        url = "";
        synopsis = "A minimal Graph Theory library.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "graphene" = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens-family
            hsPkgs.lens-family-core
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.bifunctors
            hsPkgs.containers
            hsPkgs.hashable
          ];
        };
      };
    }