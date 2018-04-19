{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "BlastHTTP";
          version = "1.0.1";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "florian.eggenhofer@univie.ac.at";
        author = "Florian Eggenhofer";
        homepage = "https://github.com/eggzilla/BlastHTTP";
        url = "";
        synopsis = "Libary to interface with the NCBI blast REST interface";
        description = "Searches for a provided nucleotide or protein sequence with the NCBI Blast REST service and returns a blast result in xml format as BlastResult datatype.\n\nFor more information on BLAST refer to: <http://blast.ncbi.nlm.nih.gov/Blast.cgi>.\n\nInformation on the webservice can be found at: <http://www.ncbi.nlm.nih.gov/BLAST/developer.shtml>.\n\nIf you plan to submit more than 20 searches in one session, please look up the Usage Guidelines in the webservice information.";
        buildType = "Simple";
      };
      components = {
        BlastHTTP = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.HTTP
            hsPkgs.http-conduit
            hsPkgs.hxt
            hsPkgs.network
            hsPkgs.mtl
            hsPkgs.blastxml
            hsPkgs.biocore
          ];
        };
      };
    }