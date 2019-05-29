{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "BiobaseHTTPTools"; version = "1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "egg@informatik.uni-freiburg.de";
      author = "Florian Eggenhofer";
      homepage = "";
      url = "";
      synopsis = "Tools to query Bioinformatics HTTP services e.g. Entrez, Ensembl.";
      description = "BiobaseHTTP provides tools to interface the Bioinformatics REST services, currently Entrez, Ensembl.\n\nUsage instructions can be found in the <https://github.com/eggzilla/BiobaseHTTPTools README>\n\nCurrently following Tools are included:\n\n* FetchSequences:\nRetrieves sequence in fasta format\n\n* AccessionToTaxId:\nConverts NCBI accession number to taxonomy id\n\n* GeneIdToGOTerms:\nRetrieve GOterms for a Ensembl GeneId\n\n* GeneIdToUniProtId\nRetrieves UniProtId for a Ensembl GeneId";
      buildType = "Simple";
      };
    components = {
      exes = {
        "FetchSequence" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.BiobaseHTTP)
            (hsPkgs.either-unwrap)
            (hsPkgs.BiobaseFasta)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            ];
          };
        "AccessionToTaxId" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.BiobaseHTTP)
            (hsPkgs.either-unwrap)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.hxt)
            ];
          };
        "GeneIdToUniProtId" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.BiobaseHTTP)
            (hsPkgs.text)
            ];
          };
        "GeneIdToGOTerms" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.BiobaseHTTP)
            (hsPkgs.text)
            ];
          };
        };
      };
    }