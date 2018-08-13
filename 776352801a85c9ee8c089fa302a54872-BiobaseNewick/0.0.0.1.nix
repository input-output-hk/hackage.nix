{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "BiobaseNewick";
        version = "0.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Christian Hoener zu Siederdissen, 2015-2016";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen";
      homepage = "https://github.com/choener/BiobaseNewick";
      url = "";
      synopsis = "Newick file format parser.";
      description = "This is a simple parser for Newick trees. The parser returns a\nrose tree. Each node is labelled with the node name (or an\nempty string for anonymous nodes) and a distance (0 if not\ngiven).\n\nIncludes conversion to an efficient static forest.";
      buildType = "Simple";
    };
    components = {
      "BiobaseNewick" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.binary)
          (hsPkgs.cereal)
          (hsPkgs.cereal-text)
          (hsPkgs.containers)
          (hsPkgs.fgl)
          (hsPkgs.ForestStructures)
          (hsPkgs.QuickCheck)
          (hsPkgs.text)
          (hsPkgs.text-binary)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "properties" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.binary)
            (hsPkgs.BiobaseNewick)
            (hsPkgs.cereal)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-th)
          ];
        };
      };
    };
  }