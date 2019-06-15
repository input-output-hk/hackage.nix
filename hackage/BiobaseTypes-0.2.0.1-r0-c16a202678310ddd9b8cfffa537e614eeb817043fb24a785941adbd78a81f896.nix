{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "BiobaseTypes"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Christian Hoener zu Siederdissen, 2015 - 2019";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen, 2015 - 2019";
      homepage = "https://github.com/choener/BiobaseTypes";
      url = "";
      synopsis = "Collection of types for bioinformatics";
      description = "Types used in a number of bioinformatics libraries.\n\n* linear indices\n\n* energies\n\n* biostring wrappers";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
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
          (hsPkgs.streaming)
          (hsPkgs.string-conversions)
          (hsPkgs.text)
          (hsPkgs.text-binary)
          (hsPkgs.utf8-string)
          (hsPkgs.vector)
          (hsPkgs.vector-binary-instances)
          (hsPkgs.vector-th-unbox)
          (hsPkgs.bimaps)
          (hsPkgs.ForestStructures)
          (hsPkgs.PrimitiveArray)
          (hsPkgs.SciBaseTypes)
          ];
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
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
            (hsPkgs.streaming)
            (hsPkgs.string-conversions)
            (hsPkgs.text)
            (hsPkgs.text-binary)
            (hsPkgs.utf8-string)
            (hsPkgs.vector)
            (hsPkgs.vector-binary-instances)
            (hsPkgs.vector-th-unbox)
            (hsPkgs.bimaps)
            (hsPkgs.ForestStructures)
            (hsPkgs.PrimitiveArray)
            (hsPkgs.SciBaseTypes)
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-th)
            (hsPkgs.BiobaseTypes)
            ];
          };
        };
      };
    }