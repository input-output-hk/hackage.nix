{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      unsafe = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "judy";
          version = "0.2.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008, Don Stewart <dons@galois.com>";
        maintainer = "Mark Wotton <mwotton@gmail.com>";
        author = "Don Stewart";
        homepage = "http://github.com/mwotton/judy";
        url = "";
        synopsis = "Fast, scalable, mutable dynamic arrays, maps and hashes";
        description = "Fast, scalable, mutable dynamic arrays, maps and hashes";
        buildType = "Simple";
      };
      components = {
        judy = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.bytestring
          ];
          libs = [ pkgs.Judy ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.judy
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }