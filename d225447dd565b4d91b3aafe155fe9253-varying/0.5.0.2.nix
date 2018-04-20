{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "varying";
          version = "0.5.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "schell.scivally@synapsegroup.com";
        author = "Schell Scivally";
        homepage = "https://github.com/schell/varying";
        url = "";
        synopsis = "FRP through value streams and monadic splines.";
        description = "Varying is a FRP library aimed at providing a\nsimple way to describe values that change over a domain.\nIt allows monadic, applicative and arrow notation and has\nconvenience functions for tweening.";
        buildType = "Simple";
      };
      components = {
        varying = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
          ];
        };
        exes = {
          varying-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.transformers
              hsPkgs.time
              hsPkgs.varying
            ];
          };
        };
        tests = {
          varying-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.varying
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
        };
        benchmarks = {
          varying-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.varying
              hsPkgs.criterion
            ];
          };
        };
      };
    }