{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "estimators";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "<srush@mit.edu>";
        author = "Sasha Rush";
        homepage = "";
        url = "";
        synopsis = "Tool for managing probability estimation";
        description = "This library provides data structures for collecting counts\nand estimating distributions from observed data. It is designed for natural language\nsystems that need to handle large, discrete observation sets and\nperform smoothing.";
        buildType = "Simple";
      };
      components = {
        estimators = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.binary
            hsPkgs.list-tries
            hsPkgs.pretty
            hsPkgs.prettyclass
            hsPkgs.text
          ];
        };
      };
    }