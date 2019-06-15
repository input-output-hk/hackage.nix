{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "BiobaseXNA"; version = "0.11.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Christian Hoener zu Siederdissen, 2011 - 2019";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen";
      homepage = "https://github.com/choener/BiobaseXNA";
      url = "";
      synopsis = "Efficient RNA/DNA/Protein Primary/Secondary Structure";
      description = "This is a base library for bioinformatics with emphasis on RNA\nand DNA primary structure as well as amino acid sequences.\n\nProvided are efficient encodings for short (limited by the\namount of RAM) sequences, as required by RNA folding tools.\nExtended RNA secondary structures can be represented as well.\n\nContains data from:\n\n@\nFrequency and isostericity of RNA base pairs\nJesse Stombaugh, Craig L. Zirbel, Eric Westhof, and Neocles B. Leontis\nNucl. Acids Res. (2009)\n@\n\n<http://dx.crossref.org/10.1093%2Fnar%2Fgkp011>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.binary)
          (hsPkgs.bytes)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.cereal-vector)
          (hsPkgs.containers)
          (hsPkgs.csv)
          (hsPkgs.data-default)
          (hsPkgs.deepseq)
          (hsPkgs.file-embed)
          (hsPkgs.hashable)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.primitive)
          (hsPkgs.QuickCheck)
          (hsPkgs.split)
          (hsPkgs.text)
          (hsPkgs.tuple)
          (hsPkgs.vector)
          (hsPkgs.vector-binary-instances)
          (hsPkgs.vector-th-unbox)
          (hsPkgs.bimaps)
          (hsPkgs.BiobaseENA)
          (hsPkgs.BiobaseTypes)
          (hsPkgs.ForestStructures)
          (hsPkgs.PrimitiveArray)
          ];
        };
      exes = {
        "SubOptDistance" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.binary)
            (hsPkgs.bytes)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.cereal-vector)
            (hsPkgs.containers)
            (hsPkgs.csv)
            (hsPkgs.data-default)
            (hsPkgs.deepseq)
            (hsPkgs.file-embed)
            (hsPkgs.hashable)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.primitive)
            (hsPkgs.QuickCheck)
            (hsPkgs.split)
            (hsPkgs.text)
            (hsPkgs.tuple)
            (hsPkgs.vector)
            (hsPkgs.vector-binary-instances)
            (hsPkgs.vector-th-unbox)
            (hsPkgs.bimaps)
            (hsPkgs.BiobaseENA)
            (hsPkgs.BiobaseTypes)
            (hsPkgs.ForestStructures)
            (hsPkgs.PrimitiveArray)
            (hsPkgs.base)
            (hsPkgs.BiobaseXNA)
            (hsPkgs.cmdargs)
            ];
          };
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.binary)
            (hsPkgs.bytes)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.cereal-vector)
            (hsPkgs.containers)
            (hsPkgs.csv)
            (hsPkgs.data-default)
            (hsPkgs.deepseq)
            (hsPkgs.file-embed)
            (hsPkgs.hashable)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.primitive)
            (hsPkgs.QuickCheck)
            (hsPkgs.split)
            (hsPkgs.text)
            (hsPkgs.tuple)
            (hsPkgs.vector)
            (hsPkgs.vector-binary-instances)
            (hsPkgs.vector-th-unbox)
            (hsPkgs.bimaps)
            (hsPkgs.BiobaseENA)
            (hsPkgs.BiobaseTypes)
            (hsPkgs.ForestStructures)
            (hsPkgs.PrimitiveArray)
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-th)
            (hsPkgs.BiobaseXNA)
            ];
          };
        };
      };
    }