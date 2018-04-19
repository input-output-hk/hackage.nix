{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "bv";
          version = "0.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "2012-2013 Iago Abal, HASLab & University of Minho";
        maintainer = "Iago Abal <iago.abal@gmail.com>";
        author = "Iago Abal <iago.abal@gmail.com>";
        homepage = "http://bitbucket.org/iago/bv-haskell";
        url = "";
        synopsis = "Bit-vector arithmetic library";
        description = "Bit-vectors implemented as a wrapper over integers.";
        buildType = "Simple";
      };
      components = {
        bv = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          bv-tester = {
            depends  = pkgs.lib.optionals _flags.test [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-th
            ];
          };
        };
      };
    }