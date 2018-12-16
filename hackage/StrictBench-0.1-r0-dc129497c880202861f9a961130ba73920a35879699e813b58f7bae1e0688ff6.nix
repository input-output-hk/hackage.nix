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
      specVersion = "1.2";
      identifier = {
        name = "StrictBench";
        version = "0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Remco Niemeijer <R.A.Niemeijer@tue.nl>";
      author = "Remco Niemeijer";
      homepage = "http://bonsaicode.wordpress.com/2009/06/07/strictbench-0-1/";
      url = "";
      synopsis = "Benchmarking code through strict evaluation";
      description = "A benchmarking library with a simple purpose:\nto strictly evaluate a value and report how long it takes.\n\nCan be useful to identify the slow part of an\nalgorithm, since Haskell's lazy evaluation can make\nit hard to see where the bottleneck lies.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.parallel)
          (hsPkgs.benchpress)
        ];
      };
    };
  }