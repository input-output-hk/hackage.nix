{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      local = false;
      profile = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hbayes";
          version = "0.4.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2012, alpheccar";
        maintainer = "misc@alpheccar.org";
        author = "alpheccar";
        homepage = "http://www.alpheccar.org";
        url = "";
        synopsis = "Inference with Discrete Bayesian Networks";
        description = "Algorithms for inference with Discrete Bayesian Networks.\nIt is a very preliminary version. It has only been tested on very simple\nexamples where it worked. It should be considered as experimental and not used\nin any production work.";
        buildType = "Simple";
      };
      components = {
        hbayes = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.QuickCheck
            hsPkgs.pretty
            hsPkgs.boxes
            hsPkgs.vector
            hsPkgs.random
            hsPkgs.split
            hsPkgs.parsec
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.binary
            hsPkgs.test-framework-quickcheck2
            hsPkgs.test-framework
            hsPkgs.test-framework-hunit
            hsPkgs.HUnit
          ];
        };
      };
    }