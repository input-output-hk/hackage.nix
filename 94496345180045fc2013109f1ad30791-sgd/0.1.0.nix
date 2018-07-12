{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "sgd";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2012 IPI PAN";
        maintainer = "waszczuk.kuba@gmail.com";
        author = "Jakub Waszczuk";
        homepage = "https://github.com/kawu/sgd";
        url = "";
        synopsis = "Stochastic gradient descent";
        description = "Implementation of a Stochastic Gradient Descent optimization method.\nSee examples directory in the source package for examples of usage.\n\nIt is a preliminary implementation of the SGD method and API may change\nin future versions.";
        buildType = "Simple";
      };
      components = {
        "sgd" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.vector
            hsPkgs.random
            hsPkgs.primitive
            hsPkgs.logfloat
            hsPkgs.monad-par
          ];
        };
      };
    }