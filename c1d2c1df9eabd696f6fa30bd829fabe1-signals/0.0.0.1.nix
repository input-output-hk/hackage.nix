{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "signals";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mararon@chalmers.se";
        author = "Markus Aronsson";
        homepage = "https://github.com/markus-git/signals";
        url = "";
        synopsis = "Stream Processing for Embedded Domain Specific Languages";
        description = "";
        buildType = "Simple";
      };
      components = {
        "signals" = {
          depends  = [
            hsPkgs.base
            hsPkgs.operational
            hsPkgs.constraints
            hsPkgs.array
            hsPkgs.language-c-quote
            hsPkgs.data-reify
            hsPkgs.mainland-pretty
            hsPkgs.mtl
            hsPkgs.exception-transformers
            hsPkgs.containers
            hsPkgs.exception-mtl
          ];
        };
      };
    }