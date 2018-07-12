{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "EntrezHTTP";
          version = "1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "egg@tbi.univie.ac.at";
        author = "Florian Eggenhofer";
        homepage = "https://github.com/eggzilla/EntrezHTTP";
        url = "";
        synopsis = "Libary to interface with the NCBI Entrez REST service.";
        description = "EntrezHTTP provides functions to query the NCBI entrez REST interface.\n\nThere are multiple different databases and tools, so called eutils,\nprovided by the service.\n\nFor more information on Entrez refer to: <http://www.ncbi.nlm.nih.gov/gquery/>.\n\nInformation on the webservice can be found at: <http://www.ncbi.nlm.nih.gov/books/NBK25497/>.\n\nIf you plan to include the library in a tool, register it as explained <http://www.ncbi.nlm.nih.gov/books/NBK25497/#chapter2.Usage_Guidelines_and_Requiremen here>.";
        buildType = "Simple";
      };
      components = {
        "EntrezHTTP" = {
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
            hsPkgs.biocore
            hsPkgs.Taxonomy
          ];
        };
      };
    }