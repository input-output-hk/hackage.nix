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
        name = "LinearSplit";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "virukav@gmail.com";
      author = "Vitaliy Rukavishnikov";
      homepage = "http://github.com/rukav/LinearSplit";
      url = "";
      synopsis = "Partition the sequence of items to the subsequences in the order given";
      description = "The LinearSplit module implements partitioning the sequence of items to the\nsubsequences in the order given. The items can be splitted using greedy\nheuristic or using the linear partition algorithm to minimize the maximum cost\nover all ranges (see the 'The Algorithm Design Manual' by Steven S. Skiena..).\n\nThe library can be used to balance the work across processors to minimize the run time.\nFor the library usage take a look in examples/Splitter.hs.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cmdargs)
          (hsPkgs.array)
          (hsPkgs.QuickCheck)
          (hsPkgs.haskell98)
        ];
      };
    };
  }