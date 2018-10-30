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
      specVersion = "0";
      identifier = {
        name = "chp";
        version = "1.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008, University of Kent";
      maintainer = "neil@twistedsquare.com";
      author = "Neil Brown";
      homepage = "http://www.cs.kent.ac.uk/projects/ofa/chp/";
      url = "";
      synopsis = "An implementation of concurrency ideas from Communicating Sequential Processes";
      description = "The Communicating Haskell Processes (CHP) library is an\nimplementation of ideas from Hoare's Communicating\nSequential Processes.  More details and a tutorial can be\nfound at its homepage:\n<http://www.cs.kent.ac.uk/projects/ofa/chp/>\nThe library requires at least GHC 6.8.1.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.parallel)
          (hsPkgs.pretty)
          (hsPkgs.stm)
        ];
      };
    };
  }