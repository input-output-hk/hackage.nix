{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      use_data_tree = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sai-shape-syb";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "rasfar@gmail.com";
        author = "Andrew Seniuk";
        homepage = "http://www.fremissant.net/shape-syb";
        url = "";
        synopsis = "Obtain homogeneous values from arbitrary values, transforming or culling data";
        description = "This package provides SYB shape support: generic mapping to\nhomogeneous types, and related features.  Complements existing\nUniplate and TH shape libraries.\n\nGiven a value of arbitrary complexity (mutually recursive\nheterogeneous constructor application), you can obtain\na structure-preserving representation (homomorphism) as\na homogeneous type @Homo a@, parameterised by any choice type @a@.\n\nSee the project\n<http://www.fremissant.net/shape-syb homepage> for more information.";
        buildType = "Simple";
      };
      components = {
        "sai-shape-syb" = {
          depends  = [
            hsPkgs.base
            hsPkgs.syb
            hsPkgs.ghc
            hsPkgs.ghc-syb-utils
          ] ++ pkgs.lib.optional _flags.use_data_tree hsPkgs.containers;
        };
        tests = {
          "unit-tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.syb
              hsPkgs.ghc
              hsPkgs.ghc-syb-utils
              hsPkgs.containers
              hsPkgs.HUnit
            ];
          };
        };
      };
    }