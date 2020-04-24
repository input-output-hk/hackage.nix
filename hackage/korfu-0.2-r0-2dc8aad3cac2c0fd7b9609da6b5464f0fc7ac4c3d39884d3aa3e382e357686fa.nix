{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "korfu"; version = "0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Ketil Malde <ketil@malde.org>";
      author = "Ketil Malde";
      homepage = "http://blog.malde.org/";
      url = "";
      synopsis = "The Korfu ORF Utility";
      description = "Reads nucleotide sequences in FASTA format, and generates\npredicted protein sequences, based on BLASTX hits.\nThe predictions are constructed by merging information from\nmultiple BLAST hits.  Korfu can also also generate all (six-frame)\ntranslations (with the '--all' option)";
      buildType = "Simple";
      };
    components = {
      exes = {
        "korfu" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bio" or ((hsPkgs.pkgs-errors).buildDepError "bio"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."simpleargs" or ((hsPkgs.pkgs-errors).buildDepError "simpleargs"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }