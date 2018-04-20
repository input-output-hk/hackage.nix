{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "QLearn";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "dpandya@college.harvard.edu";
        author = "Dhaivat Pandya";
        homepage = "poincare.github.io/QLearn";
        url = "";
        synopsis = "A library for fast, easy-to-use Q-learning.";
        description = "";
        buildType = "Simple";
      };
      components = {
        QLearn = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.random
          ];
        };
      };
    }