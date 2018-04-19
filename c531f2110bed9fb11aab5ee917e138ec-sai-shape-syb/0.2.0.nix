{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      use_data_tree = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sai-shape-syb";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "rasfar@gmail.com";
        author = "Andrew Seniuk";
        homepage = "http://www.fremissant.net/shape-syb";
        url = "";
        synopsis = "Obtain homogeneous values from arbitrary values, tramsforming or culling data";
        description = "This package provides SYB shape support: generic fmap to\nhomogeneous types, and related features.  Complements existing\nUniplate and TH shape libraries.  See <http://www.fremissant.net/shape-syb>\nfor more information.\n\nGiven a value of arbitrary complexity (mutually recursive\nheterogeneous constructor application), you can obtain\na structure-preserving representation (homomorphism) as\na homogeneous type @Homo a@, parameterised by any choice type @a@.";
        buildType = "Simple";
      };
      components = {
        sai-shape-syb = {
          depends  = [
            hsPkgs.base
            hsPkgs.syb
            hsPkgs.ghc-syb-utils
            hsPkgs.ghc
          ] ++ pkgs.lib.optional _flags.use_data_tree hsPkgs.containers;
        };
        tests = {
          unit-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.syb
              hsPkgs.ghc
              hsPkgs.ghc-syb-utils
              hsPkgs.sai-shape-syb
              hsPkgs.containers
              hsPkgs.HUnit
            ];
          };
        };
      };
    }