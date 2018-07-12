{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "DCFL";
          version = "0.1.3.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "dpandya@college.harvard.edu";
        author = "Dhaivat Pandya";
        homepage = "https://github.com/Poincare/DCFL";
        url = "";
        synopsis = "Communication Free Learning-based constraint solver";
        description = "An implementation of Communication Free Learning, a technique used to solve Constraint Satisfcation Problems (CSPs) in a parallelizable manner. The algorithm is described in the paper Decentralized Constraint Satisfaction by Duffy, et. al. and this implementation provides both parallel and serial solvers.";
        buildType = "Simple";
      };
      components = {
        "DCFL" = {
          depends  = [
            hsPkgs.base
            hsPkgs.random
            hsPkgs.HUnit
          ];
        };
      };
    }