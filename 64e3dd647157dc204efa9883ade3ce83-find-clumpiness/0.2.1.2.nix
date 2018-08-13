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
        name = "find-clumpiness";
        version = "0.2.1.2";
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
          (hsPkgs.clumpiness)
          (hsPkgs.tree-fun)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.text-show)
          (hsPkgs.aeson)
          (hsPkgs.BiobaseNewick)
          (hsPkgs.listsafe)
        ];
      };
      exes = {
        "find-clumpiness" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.find-clumpiness)
            (hsPkgs.clumpiness)
            (hsPkgs.tree-fun)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.aeson)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.optparse-applicative)
            (hsPkgs.BiobaseNewick)
          ];
        };
      };
    };
  }