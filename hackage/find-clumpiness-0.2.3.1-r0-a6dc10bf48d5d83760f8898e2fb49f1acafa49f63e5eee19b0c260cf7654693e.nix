{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "find-clumpiness";
        version = "0.2.3.1";
      };
      license = "GPL-3.0-only";
      copyright = "Copyright 2017 Gregory W. Schwartz";
      maintainer = "gsch@mail.med.upenn.edu";
      author = "Gregory W. Schwartz";
      homepage = "http://github.com/GregorySchwartz/find-clumpiness#readme";
      url = "";
      synopsis = "Find the clumpiness of labels in a tree";
      description = "Use a clumpiness measure to find the aggregation relationship between labels inside of a tree.";
      buildType = "Simple";
    };
    components = {
      "find-clumpiness" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.BiobaseNewick)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.clumpiness)
          (hsPkgs.containers)
          (hsPkgs.hierarchical-clustering)
          (hsPkgs.listsafe)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.text-show)
          (hsPkgs.tree-fun)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "find-clumpiness" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.find-clumpiness)
            (hsPkgs.BiobaseNewick)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.clumpiness)
            (hsPkgs.containers)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            (hsPkgs.tree-fun)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }