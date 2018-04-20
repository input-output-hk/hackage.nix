{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "TaxonomyTools";
          version = "1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "egg@tbi.univie.ac.at";
        author = "Florian Eggenhofer";
        homepage = "";
        url = "";
        synopsis = "Tool for parsing, processing, comparing and visualizing taxonomy data";
        description = "Taxonomy Tool utilizes functions from the Taxonomy library to provide\n\nseveral commandline utilities for routine-tasks with taxonomy data.\n\nCurrently some tools accept either the <ftp://ftp.ncbi.nih.gov/pub/taxonomy/ NCBI taxonomy dump> as input,\n\nwhile other retrieve the data directly from the <http://www.ncbi.nlm.nih.gov/gquery/ NCBI Entrez REST> interface.\n\nIt is planned to support both datasources with each tool.\n\nUsage instructions can be found in the <https://github.com/eggzilla/TaxonomyTools README>\n\nCurrently following Tools are included:\n\n* Accessions2TaxIds:\nConverts a list of NCBI accession numbers into NCBI taxonomy ids\n\n* TaxIds2Tree:\nList of taxonomy ids is converted into a graphical tree representation\neither as .svg (via graphviz) or as .json (via d3js).\n\n* TaxIds2TreeCompare:\nMultiple lists of taxonomy ids are converted into a visualisation of the\ntaxonomic tree highlighting the input nodes corresponding to their list.\n\n* TaxIds2Text:\nList of taxonomy ids is converted in a short text summary for each node.\n\n* TreeDistance:\nComputes the distance between two input nodes on the given tree.";
        buildType = "Simple";
      };
      components = {
        exes = {
          TaxIds2Text = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.Taxonomy
              hsPkgs.either-unwrap
              hsPkgs.fgl
              hsPkgs.bytestring
            ];
          };
          Accessions2TaxIds = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.Taxonomy
              hsPkgs.either-unwrap
              hsPkgs.fgl
              hsPkgs.cassava
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.parsec
              hsPkgs.EntrezHTTP
              hsPkgs.hxt
            ];
          };
          TaxIds2TreeCompare = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.Taxonomy
              hsPkgs.either-unwrap
              hsPkgs.fgl
              hsPkgs.cassava
              hsPkgs.vector
              hsPkgs.bytestring
            ];
          };
          TaxIds2Tree = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.Taxonomy
              hsPkgs.either-unwrap
              hsPkgs.fgl
              hsPkgs.cassava
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.aeson
            ];
          };
          TaxIdsDistance = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.Taxonomy
              hsPkgs.either-unwrap
              hsPkgs.fgl
              hsPkgs.vector
              hsPkgs.bytestring
            ];
          };
        };
      };
    }