{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "BiobaseNewick";
          version = "0.0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Christian Hoener zu Siederdissen, 2015-2017";
        maintainer = "choener@bioinf.uni-leipzig.de";
        author = "Christian Hoener zu Siederdissen";
        homepage = "https://github.com/choener/BiobaseNewick";
        url = "";
        synopsis = "Newick file format parser.";
        description = "This is a simple parser for Newick trees. The parser returns a\nrose tree. Each node is labelled with the node name (or an\nempty string for anonymous nodes) and a distance (0 if not\ngiven).\n\nIncludes conversion to an efficient static forest.";
        buildType = "Simple";
      };
      components = {
        BiobaseNewick = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.binary
            hsPkgs.cereal
            hsPkgs.cereal-text
            hsPkgs.containers
            hsPkgs.fgl
            hsPkgs.QuickCheck
            hsPkgs.text
            hsPkgs.text-binary
            hsPkgs.vector
            hsPkgs.ForestStructures
          ];
        };
        exes = {
          TestForestStructure = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.text
              hsPkgs.vector
              hsPkgs.BiobaseNewick
              hsPkgs.ForestStructures
            ];
          };
        };
        tests = {
          properties = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.binary
              hsPkgs.BiobaseNewick
              hsPkgs.cereal
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-th
            ];
          };
        };
      };
    }