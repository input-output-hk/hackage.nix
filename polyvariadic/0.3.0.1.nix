{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "polyvariadic";
          version = "0.3.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(C) Francesco Gazzetta 2017";
        maintainer = "francygazz@gmail.com";
        author = "Francesco Gazzetta";
        homepage = "https://github.com/fgaz/polyvariadic";
        url = "";
        synopsis = "Creation and application of polyvariadic functions";
        description = "Creation and application of polyvariadic functions, see the docs for usage and examples";
        buildType = "Simple";
      };
      components = {
        polyvariadic = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups;
        };
      };
    }