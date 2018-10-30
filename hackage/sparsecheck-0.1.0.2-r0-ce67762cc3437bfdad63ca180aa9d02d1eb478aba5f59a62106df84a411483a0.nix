{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "sparsecheck";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2007, Matthew Naylor";
      maintainer = "mfn@cs.york.ac.uk";
      author = "Matthew Naylor";
      homepage = "http://www.cs.york.ac.uk/~mfn/sparsecheck/";
      url = "";
      synopsis = "A Logic Programming Library for Test-Data Generation";
      description = "SparseCheck is a library for logic programming in Haskell that\nallows convenient description of test-data generators.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
    };
  }