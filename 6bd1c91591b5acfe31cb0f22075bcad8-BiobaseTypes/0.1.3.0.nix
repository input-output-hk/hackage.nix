{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10.0";
      identifier = {
        name = "BiobaseTypes";
        version = "0.1.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "Christian Hoener zu Siederdissen, 2015 - 2017";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen, 2015 - 2017";
      homepage = "https://github.com/choener/BiobaseTypes";
      url = "";
      synopsis = "Collection of types for bioinformatics";
      description = "Types used in a number of bioinformatics libraries.\n\n* linear indices\n\n* energies\n\n* numerics\n\n* biostring wrappers";
      buildType = "Simple";
    };
    components = {
      "BiobaseTypes" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.cereal-text)
          (hsPkgs.cereal-vector)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.intern)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.primitive)
          (hsPkgs.QuickCheck)
          (hsPkgs.string-conversions)
          (hsPkgs.text)
          (hsPkgs.text-binary)
          (hsPkgs.utf8-string)
          (hsPkgs.vector)
          (hsPkgs.vector-binary-instances)
          (hsPkgs.vector-th-unbox)
          (hsPkgs.bimaps)
          (hsPkgs.PrimitiveArray)
        ];
      };
      tests = {
        "properties" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-th)
            (hsPkgs.BiobaseTypes)
          ];
        };
      };
    };
  }