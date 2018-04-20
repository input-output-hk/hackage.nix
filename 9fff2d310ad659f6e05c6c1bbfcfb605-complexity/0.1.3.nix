{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "complexity";
          version = "0.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009 Roel van Dijk";
        maintainer = "vandijk.roel@gmail.com";
        author = "Roel van Dijk";
        homepage = "";
        url = "";
        synopsis = "Empirical algorithmic complexity";
        description = "Determine the complexity of functions by testing them on inputs of various sizes.";
        buildType = "Simple";
      };
      components = {
        complexity = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.parallel
            hsPkgs.transformers
            hsPkgs.data-accessor
            hsPkgs.pretty
            hsPkgs.colour
            hsPkgs.Chart
            hsPkgs.hstats
          ];
        };
      };
    }