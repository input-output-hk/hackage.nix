{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "dice-entropy-conduit";
        version = "1.0.0.1";
      };
      license = "LGPL-2.1-only";
      copyright = "Peter Robinson 2014";
      maintainer = "peter.robinson@monoid.at";
      author = "Peter Robinson <peter.robinson@monoid.at>";
      homepage = "http://monoid.at/code";
      url = "";
      synopsis = "Cryptographically secure n-sided dice via rejection sampling.";
      description = "This library uses rejection sampling to provide cryptographically secure\n@n@-sided dice rolls and random sampling (within a given range).\nThe number of used random bits is close to the information-theoretic optimal\nbound.\n\n/Usage:/\n\nIf we wanted to use the system-specific entropy source ('systemEntropy') to\nproduce 10 dice rolls of a 6-sided dice (i.e. range [0,5]), we could write:\n\n> > systemEntropy \$\$ diceRolls 6 =\$= CL.take 10\n> [5,1,3,3,0,5,3,2,2,1]\n\nThe function 'testPerformance' yields the actual number of consumed random\nbits:\n\n> > testPerformance 12 10000\n> Generated 10000 random samples in range [0,11]\n> Average number of bits used: 3.5904\n> Entropy lower bound on the number of required bits: 3.5849625007211565\n> Performance ratio: 1.0015167520658164\n\nFeedback is welcome!";
      buildType = "Simple";
    };
    components = {
      "dice-entropy-conduit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.entropy)
          (hsPkgs.conduit)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "Main" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }