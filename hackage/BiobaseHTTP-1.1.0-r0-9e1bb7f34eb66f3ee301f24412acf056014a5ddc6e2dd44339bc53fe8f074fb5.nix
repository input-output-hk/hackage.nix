{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "BiobaseHTTP"; version = "1.1.0"; };
      license = "GPL-3.0-only";
      copyright = "Florian Eggenhofer";
      maintainer = "egg@informatik.uni-freiburg.de";
      author = "Florian Eggenhofer";
      homepage = "https://github.com/eggzilla/BiobaseHTTP";
      url = "";
      synopsis = "Libary to interface with the Bioinformatics HTTP services - Entrez Ensembl";
      description = "BiobaseHTTP provides functions to interface the Bioinformatics REST services - Entrez Ensembl\n\nNCBI Entrez provides multiple different databases and eutils.\n\nFor more information on Entrez refer to: <http://www.ncbi.nlm.nih.gov/gquery/>.\n\nInformation on the webservice can be found at: <http://www.ncbi.nlm.nih.gov/books/NBK25497/>.\nIf you plan to include the library in a tool, register it as explained <http://www.ncbi.nlm.nih.gov/books/NBK25497/#chapter2.Usage_Guidelines_and_Requiremen here>.\n\nInformation on ENSEMBL genomes API can be found here: <http://rest.ensemblgenomes.org/>.\n\nBiobaseHTTP is the successor of the deprecated EntrezHTTP library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.HTTP)
          (hsPkgs.http-conduit)
          (hsPkgs.hxt)
          (hsPkgs.network)
          (hsPkgs.mtl)
          (hsPkgs.Taxonomy)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.either-unwrap)
          (hsPkgs.BiobaseEnsembl)
          ];
        };
      };
    }