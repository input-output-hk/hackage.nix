{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      split-base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pqc";
          version = "0.8";
        };
        license = "BSD-3-Clause";
        copyright = "Don Stewart 2006-2007, shelarcy 2011-2013";
        maintainer = "shelarcy <shelarcy@gmail.com>";
        author = "Don Stewart";
        homepage = "http://hub.darcs.net/shelarcy/pqc";
        url = "";
        synopsis = "Parallel batch driver for QuickCheck";
        description = "Parallel batch driver for QuickCheck";
        buildType = "Simple";
      };
      components = {
        pqc = {
          depends  = if _flags.split-base
            then [
              hsPkgs.base
              hsPkgs.random
              hsPkgs.stm
              hsPkgs.QuickCheck
            ]
            else [
              hsPkgs.base
              hsPkgs.stm
              hsPkgs.QuickCheck
            ];
        };
        tests = {
          Example = {
            depends  = [
              hsPkgs.base
              hsPkgs.pqc
              hsPkgs.ChasingBottoms
            ];
          };
        };
      };
    }