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
        name = "collapse-duplication";
        version = "0.4.0.1";
      };
      license = "GPL-3.0-only";
      copyright = "Copyright: (c) 2018 Gregory W. Schwartz";
      maintainer = "gsch@mail.med.upenn.edu";
      author = "Gregory W. Schwartz";
      homepage = "http://github.com/GregorySchwartz/collapse-duplication#readme";
      url = "";
      synopsis = "Collapse the duplication output into clones and return their frequencies.";
      description = "Process the output of heatitup in order to collapse sequences into clones by similar ITD mutations.";
      buildType = "Simple";
    };
    components = {
      "collapse-duplication" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cassava)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-show)
          (hsPkgs.containers)
          (hsPkgs.hierarchical-clustering)
          (hsPkgs.lens)
        ];
      };
      exes = {
        "collapse-duplication" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.collapse-duplication)
            (hsPkgs.optparse-generic)
            (hsPkgs.cassava)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.lens)
            (hsPkgs.split)
          ];
        };
      };
    };
  }