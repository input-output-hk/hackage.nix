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
        name = "paramtree";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2017 Merijn Verstraaten";
      maintainer = "Merijn Verstraaten <merijn@inconsistent.nl>";
      author = "Merijn Verstraaten";
      homepage = "https://github.com/merijn/paramtree";
      url = "";
      synopsis = "Generate labelled test/benchmark trees from sets of parameters";
      description = "Easily generate a labelled tree of tests/benchmarks from a generation\nfunction and sets of parameters to use for each of that functions\narguments. Example usecases include criterion benchmark trees or tasty test\ntrees.";
      buildType = "Simple";
    };
    components = {
      "paramtree" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.paramtree)
            (hsPkgs.bytestring)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-hunit)
            (hsPkgs.temporary)
          ];
        };
      };
    };
  }