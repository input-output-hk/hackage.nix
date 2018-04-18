{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "HUnit";
          version = "1.2.2.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "hunit@richardg.name";
        author = "Dean Herington";
        homepage = "http://hunit.sourceforge.net/";
        url = "";
        synopsis = "A unit testing framework for Haskell";
        description = "HUnit is a unit testing framework for Haskell, inspired by the\nJUnit tool for Java, see: <http://www.junit.org>.";
        buildType = "Custom";
      };
      components = {
        HUnit = {
          depends  = ([ hsPkgs.base ] ++ [
            hsPkgs.base
          ]) ++ pkgs.lib.optional compiler.isGhc hsPkgs.base;
        };
        exes = {
          basic-tests = {
            depends  = ([ hsPkgs.base ] ++ [
              hsPkgs.base
            ]) ++ pkgs.lib.optional compiler.isGhc hsPkgs.base;
          };
          extended-tests = {
            depends  = ([ hsPkgs.base ] ++ [
              hsPkgs.base
            ]) ++ pkgs.lib.optional compiler.isGhc hsPkgs.base;
          };
          terminal-tests = {
            depends  = ([ hsPkgs.base ] ++ [
              hsPkgs.base
            ]) ++ pkgs.lib.optional compiler.isGhc hsPkgs.base;
          };
        };
      };
    }