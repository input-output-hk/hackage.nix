{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10.0";
        identifier = {
          name = "BiobaseTypes";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Christian Hoener zu Siederdissen, 2015";
        maintainer = "choener@bioinf.uni-leipzig.de";
        author = "Christian Hoener zu Siederdissen, 2015";
        homepage = "https://github.com/choener/BiobaseTypes";
        url = "";
        synopsis = "Collection of types for bioinformatics";
        description = "Types used in a number of bioinformatics libraries.\n\n* linear indices\n\n* energies\n\n* numerics";
        buildType = "Simple";
      };
      components = {
        BiobaseTypes = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.binary
            hsPkgs.cereal
            hsPkgs.cereal-text
            hsPkgs.data-default
            hsPkgs.deepseq
            hsPkgs.hashable
            hsPkgs.log-domain
            hsPkgs.primitive
            hsPkgs.PrimitiveArray
            hsPkgs.QuickCheck
            hsPkgs.stringable
            hsPkgs.text
            hsPkgs.text-binary
            hsPkgs.vector
            hsPkgs.vector-binary-instances
            hsPkgs.vector-th-unbox
          ];
        };
        tests = {
          properties = {
            depends  = [
              hsPkgs.base
              hsPkgs.BiobaseTypes
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-th
            ];
          };
        };
      };
    }