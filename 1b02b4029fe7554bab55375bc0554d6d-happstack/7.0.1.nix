{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
      tests = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "happstack";
          version = "7.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Happstack team <happs@googlegroups.com>";
        author = "Happstack team, HAppS LLC";
        homepage = "http://happstack.com";
        url = "";
        synopsis = "The haskell application server stack + code generation";
        description = "The haskell application server stack";
        buildType = "Simple";
      };
      components = {
        happstack = {
          depends  = [
            hsPkgs.base
            hsPkgs.happstack-server
          ];
        };
        exes = {
          happstack-tests = {
            depends  = pkgs.lib.optional _flags.tests hsPkgs.HUnit;
          };
        };
      };
    }