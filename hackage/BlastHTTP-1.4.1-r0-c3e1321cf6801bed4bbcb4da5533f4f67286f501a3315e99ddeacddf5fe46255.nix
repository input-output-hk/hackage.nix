{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10.0";
      identifier = { name = "BlastHTTP"; version = "1.4.1"; };
      license = "GPL-3.0-only";
      copyright = "Florian Eggenhofer";
      maintainer = "egg@informatik.uni-freiburg.de";
      author = "Florian Eggenhofer, Christian Hoener zu Siederdissen";
      homepage = "https://github.com/eggzilla/BlastHTTP";
      url = "";
      synopsis = "Libary to interface with the NCBI blast REST interface";
      description = "Searches for a provided nucleotide or protein sequence with the NCBI Blast REST service and returns a blast result in xml format as BlastResult datatype.\n\nFor more information on BLAST refer to: <http://blast.ncbi.nlm.nih.gov/Blast.cgi>.\n\nInformation on the webservice can be found at: <http://www.ncbi.nlm.nih.gov/BLAST/developer.shtml>.\n\nIf you plan to submit more than 20 searches in one session, please look up the Usage Guidelines in the webservice information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
          (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
          (hsPkgs."hxt" or ((hsPkgs.pkgs-errors).buildDepError "hxt"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."BiobaseBlast" or ((hsPkgs.pkgs-errors).buildDepError "BiobaseBlast"))
          (hsPkgs."BiobaseFasta" or ((hsPkgs.pkgs-errors).buildDepError "BiobaseFasta"))
          (hsPkgs."either-unwrap" or ((hsPkgs.pkgs-errors).buildDepError "either-unwrap"))
          (hsPkgs."zip-archive" or ((hsPkgs.pkgs-errors).buildDepError "zip-archive"))
          ];
        buildable = true;
        };
      };
    }