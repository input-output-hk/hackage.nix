{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "GTALib";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "emoto@mist.i.u-tokyo.ac.jp";
        author = "Kento Emoto";
        homepage = "https://bitbucket.org/emoto/gtalib";
        url = "";
        synopsis = "A library for GTA programming";
        description = "This package provides the core functionalities of the GTA (Generate, Test, and Aggregate) programming framework on Haskell (c.f., Kento Emoto, Sebastian Fischer, Zhenjiang Hu: Generate, Test, and Aggregate - A Calculation-based Framework for Systematic Parallel Programming with MapReduce. ESOP 2012: 254-273). (This version is a very early version and dirty. The source files will be cleaned and documented soon.)";
        buildType = "Simple";
      };
      components = {
        GTALib = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.containers
            hsPkgs.parallel
          ];
        };
        tests = {
          unit-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.test-framework
              hsPkgs.GTALib
              hsPkgs.HUnit
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }