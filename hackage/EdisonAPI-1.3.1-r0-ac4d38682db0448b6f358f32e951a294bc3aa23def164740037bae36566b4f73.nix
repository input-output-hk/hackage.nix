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
      specVersion = "1.10";
      identifier = {
        name = "EdisonAPI";
        version = "1.3.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "robdockins AT fastmail DOT fm";
      author = "Chris Okasaki";
      homepage = "http://rwd.rdockins.name/edison/home/";
      url = "";
      synopsis = "A library of efficient, purely-functional data structures (API)";
      description = "Edison is a library of purely functional data structures written by\nChris Okasaki.  It is named after Thomas Alva Edison and for the\nmnemonic value EDiSon (Efficient Data Structures).\nEdison provides several families of abstractions, each with\nmultiple implementations.  The main abstractions provided by Edison are:\nSequences such as stacks, queues, and dequeues;\nCollections such as sets, bags and heaps; and\nAssociative Collections such as finite maps and priority queues\nwhere the priority and element are distinct.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
        ];
      };
    };
  }