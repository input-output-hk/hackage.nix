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
        name = "acme-memorandom";
        version = "0.0.3";
      };
      license = "MIT";
      copyright = "Copyright © 2015 Johan Kiviniemi";
      maintainer = "Johan Kiviniemi <devel@johan.kiviniemi.name>";
      author = "Johan Kiviniemi <devel@johan.kiviniemi.name>";
      homepage = "https://github.com/ion1/acme-memorandom";
      url = "";
      synopsis = "Memoized random number generation";
      description = "A library for generating random numbers in a memoized manner. Implemented as\na lazy table indexed by serialized 'StdGen'. Monomorphism is used to\nfacilitate memoization, users should adapt their design to work with random\n'Int' values only.\n\nIn a benchmark, the initial generation of 100000 random 'Int's took 10.30\nseconds and consumed 2.5 gigabytes of memory. Generating the 100000 'Int's\nagain from the same seed only took 2.06 seconds, a 5-fold speedup thanks to\nmemoization!\n\nIncidentally, generating the 100000 'Int's with the non-memoized function\ntook 0.12 seconds, but that of course lacks all the benefits of memoization.";
      buildType = "Simple";
    };
    components = {
      "acme-memorandom" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.MemoTrie)
          (hsPkgs.random)
        ];
      };
    };
  }