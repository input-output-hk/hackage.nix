{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10.0";
      identifier = {
        name = "BiobaseBlast";
        version = "0.2.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2013 - 2017";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen, Florian Eggenhofer";
      homepage = "https://github.com/choener/BiobaseBlast";
      url = "";
      synopsis = "BLAST-related tools";
      description = "This library contains BLAST-related functionality:\n\n- Parser for tabular NCBI BLAST+ output\n- Parsers for BLOSUM and PAM matrices.\n- Specialized substitution functions for (in)complete amino\nacid / nucleotide triplet substitution.\n- Incomplete nucleotide patterns map one or two nucleotides to\nan amino acid (need for indel editing in the mitochondria of\ncertain species like /p.polycephalum/).\n\nThe matrices are currently not provided but can be found here:\n<ftp://ftp.ncbi.nih.gov/blast/matrices/>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.vector)
          (hsPkgs.vector-th-unbox)
          (hsPkgs.BiobaseTypes)
          (hsPkgs.BiobaseXNA)
          (hsPkgs.PrimitiveArray)
        ];
      };
      tests = {
        "properties" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.split)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-silver)
            (hsPkgs.tasty-th)
            (hsPkgs.BiobaseBlast)
          ];
        };
      };
    };
  }