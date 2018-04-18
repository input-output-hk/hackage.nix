{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "EdisonAPI";
          version = "1.2.2";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "robdockins AT fastmail DOT fm";
        author = "Chris Okasaki";
        homepage = "http://www.cs.princeton.edu/~rdockins/edison/home/";
        url = "";
        synopsis = "A library of efficent, purely-functional data structures (API)";
        description = "Edison is a library of purely functional data structures written by\nChris Okasaki.  It is named after Thomas Alva Edison and for the\nmnemonic value EDiSon (Efficent Data Structures).\nEdison provides several families of abstractions, each with\nmultiple implementations.  The main abstractions provided by Edison are:\nSequences such as stacks, queues, and dequeues;\nCollections such as sets, bags and heaps; and\nAssociative Collections such as finite maps and priority queues\nwhere the priority and element are distinct.";
        buildType = "Simple";
      };
      components = {
        EdisonAPI = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
      };
    }