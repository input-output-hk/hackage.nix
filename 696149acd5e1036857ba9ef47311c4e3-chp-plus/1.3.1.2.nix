{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "chp-plus";
          version = "1.3.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2008--2010, University of Kent and Neil Brown";
        maintainer = "neil@twistedsquare.com";
        author = "Neil Brown";
        homepage = "http://www.cs.kent.ac.uk/projects/ofa/chp/";
        url = "";
        synopsis = "A set of high-level concurrency utilities built on Communicating Haskell Processes";
        description = "In version 1.0.0, this package contains functionality split\noff during the chp 1.x to 2.0 transition.  In future, it will\ncontain any new CHP features that build on the core library,\nand that do not require access to CHP's internals.  This\npackage is closely tied to the chp package.";
        buildType = "Simple";
      };
      components = {
        "chp-plus" = {
          depends  = [
            hsPkgs.base
            hsPkgs.chp
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.extensible-exceptions
            hsPkgs.HUnit
            hsPkgs.pretty
            hsPkgs.QuickCheck
            hsPkgs.stm
          ];
        };
      };
    }