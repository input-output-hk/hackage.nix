{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "transformations";
          version = "0.2.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "generics@haskell.org";
        author = "Jeroen Bransen and Jose Pedro Magalhaes";
        homepage = "";
        url = "";
        synopsis = "Generic representation of tree transformations";
        description = "This library is based on ideas described in the paper:\n\n*  Jeroen Bransen and Jose Pedro Magalhaes.\n/Generic Representations of Tree Transformations/.\n<http://dreixel.net/research/pdf/grtt_jfp_draft.pdf>";
        buildType = "Simple";
      };
      components = {
        transformations = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.regular
            hsPkgs.multirec
            hsPkgs.containers
            hsPkgs.template-haskell
          ];
        };
        exes = {
          Benchmark = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.multirec
              hsPkgs.parsec
              hsPkgs.containers
              hsPkgs.criterion
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }