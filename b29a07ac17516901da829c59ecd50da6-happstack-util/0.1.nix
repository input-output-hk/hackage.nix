{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
      tests = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "happstack-util";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Happstack team <happs@googlegroups.com>";
        author = "Happstack team, HAppS LLC";
        homepage = "http://happstack.com";
        url = "";
        synopsis = "Web framework";
        description = "Miscellaneous utilities for Happstack packages.";
        buildType = "Simple";
      };
      components = {
        happstack-util = {
          depends  = [
            hsPkgs.mtl
            hsPkgs.hslogger
            hsPkgs.template-haskell
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.old-time
            hsPkgs.process
            hsPkgs.directory
            hsPkgs.extensible-exceptions
            hsPkgs.HUnit
            hsPkgs.QuickCheck
            hsPkgs.random
          ] ++ [ hsPkgs.base ];
        };
        exes = {
          happstack-util-tests = {
            depends  = [ hsPkgs.HUnit ];
          };
        };
      };
    }