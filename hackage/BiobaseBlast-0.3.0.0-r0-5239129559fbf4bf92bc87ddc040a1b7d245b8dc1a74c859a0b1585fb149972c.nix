{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10.0";
      identifier = { name = "BiobaseBlast"; version = "0.3.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2013 - 2019";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen, Florian Eggenhofer";
      homepage = "https://github.com/choener/BiobaseBlast";
      url = "";
      synopsis = "BLAST-related tools";
      description = "This library contains BLAST-related functionality:\n\n- Parser for tabular NCBI BLAST+ output\n- Parser for JSON2 NCBI BLAST+ output\n- Parsers for BLOSUM and PAM matrices.\n- Specialized substitution functions for (in)complete amino\nacid / nucleotide triplet substitution.\n- Incomplete nucleotide patterns map one or two nucleotides to\nan amino acid (need for indel editing in the mitochondria of\ncertain species like /p.polycephalum/).\n\nThe matrices are currently not provided but can be found here:\n<ftp://ftp.ncbi.nih.gov/blast/matrices/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."file-embed" or ((hsPkgs.pkgs-errors).buildDepError "file-embed"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."log-domain" or ((hsPkgs.pkgs-errors).buildDepError "log-domain"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."vector-th-unbox" or ((hsPkgs.pkgs-errors).buildDepError "vector-th-unbox"))
          (hsPkgs."BiobaseENA" or ((hsPkgs.pkgs-errors).buildDepError "BiobaseENA"))
          (hsPkgs."BiobaseTypes" or ((hsPkgs.pkgs-errors).buildDepError "BiobaseTypes"))
          (hsPkgs."BiobaseXNA" or ((hsPkgs.pkgs-errors).buildDepError "BiobaseXNA"))
          (hsPkgs."PrimitiveArray" or ((hsPkgs.pkgs-errors).buildDepError "PrimitiveArray"))
          (hsPkgs."SciBaseTypes" or ((hsPkgs.pkgs-errors).buildDepError "SciBaseTypes"))
          ];
        buildable = true;
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-silver" or ((hsPkgs.pkgs-errors).buildDepError "tasty-silver"))
            (hsPkgs."tasty-th" or ((hsPkgs.pkgs-errors).buildDepError "tasty-th"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."BiobaseBlast" or ((hsPkgs.pkgs-errors).buildDepError "BiobaseBlast"))
            ];
          buildable = true;
          };
        };
      };
    }