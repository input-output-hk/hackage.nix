{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
      tests = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "happstack";
          version = "6.1.7";
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
        "happstack" = {
          depends  = [
            hsPkgs.base
            hsPkgs.happstack-data
            hsPkgs.happstack-ixset
            hsPkgs.happstack-server
            hsPkgs.happstack-state
            hsPkgs.happstack-util
          ];
        };
        exes = {
          "happstack-tests" = {
            depends  = pkgs.lib.optional _flags.tests hsPkgs.HUnit;
          };
        };
      };
    }