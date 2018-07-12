{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "polyvariadic";
          version = "0.3.0.0";
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
        "polyvariadic" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) hsPkgs.semigroups;
        };
      };
    }