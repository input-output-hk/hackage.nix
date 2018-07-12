{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "hjs";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Mark Wassell 2007";
        maintainer = "mwassell@bigpond.net.au";
        author = "Mark Wassell<mwassell@bigpond.net.au>";
        homepage = "";
        url = "";
        synopsis = "Javascript Parser";
        description = "A Javascript parser to be extended to an interpreter in later versions.\nParses as per ECMA-262 plus some parts of JS >=1.5";
        buildType = "Custom";
      };
      components = {
        exes = {
          "FixHappy" = {
            depends  = [
              hsPkgs.base
              hsPkgs.happy
              hsPkgs.alex
              hsPkgs.mtl
            ];
          };
          "hjs" = {
            depends  = [
              hsPkgs.base
              hsPkgs.happy
              hsPkgs.alex
              hsPkgs.mtl
            ];
          };
        };
      };
    }