{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = { name = "netcore"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011--2012, Cornell University and Princeton University";
      maintainer = "Arjun Guha <arjun@cs.cornell.edu>,\nCole Schlesinger <cschlesi@cs.princeton.edu>,\nAlec Story <avs38@cornell.edu>";
      author = "";
      homepage = "http://frenetic-lang.org";
      url = "";
      synopsis = "The NetCore compiler and runtime system for OpenFlow networks.";
      description = "NetCore is a high-level network programming language. This package provides\na NetCore compiler and runtime system for OpenFlow networks.\nSee the 'Frenetic.NetCore' module for commonly used functions.\nWe have several example programs available online at\n<https://github.com/frenetic-lang/netcore/tree/master/examples>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.multiset)
          (hsPkgs.mtl)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.fgl)
          (hsPkgs.process)
          (hsPkgs.random)
          (hsPkgs.HList)
          (hsPkgs.hslogger)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.binary-strict)
          (hsPkgs.parsec)
          (hsPkgs.syb)
          (hsPkgs.bimap)
          (hsPkgs.network)
          ];
        };
      tests = {
        "frenetic-tests" = {
          depends = [
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.fgl)
            (hsPkgs.multiset)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.random)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-th)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.HList)
            (hsPkgs.hslogger)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.binary-strict)
            (hsPkgs.parsec)
            (hsPkgs.syb)
            (hsPkgs.bimap)
            (hsPkgs.network)
            ];
          };
        };
      benchmarks = {
        "frenetic-benchmark" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.fgl)
            (hsPkgs.multiset)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.random)
            (hsPkgs.HList)
            (hsPkgs.hslogger)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.binary-strict)
            (hsPkgs.parsec)
            (hsPkgs.syb)
            (hsPkgs.bimap)
            (hsPkgs.network)
            ];
          };
        };
      };
    }