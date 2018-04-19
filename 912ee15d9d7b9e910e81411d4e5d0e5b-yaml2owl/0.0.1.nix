{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "yaml2owl";
          version = "0.0.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "abimelech@gmail.com";
        author = "Leif Warner";
        homepage = "http://github.com/leifw/yaml2owl";
        url = "";
        synopsis = "Generate OWL schema from YAML syntax, and an RDFa template.";
        description = "A command-line tool for reading a simplified rough draft of an\nRDFS/OWL schema in YAML format (example in \"examples\"),\nand converting it to an OWL schema serialized as Turtle.\nAlso, makes some RDFa \"templates\".  This is intended for quick\nscaffolding of a site that uses RDFa templates to present instance\ndata of RDF.";
        buildType = "Simple";
      };
      components = {
        exes = {
          yaml2owl = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.containers
              hsPkgs.network
              hsPkgs.swish
              hsPkgs.xml
              hsPkgs.yaml
              hsPkgs.directory
              hsPkgs.filepath
            ];
          };
        };
      };
    }