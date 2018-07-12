{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      debug = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "monadiccp";
          version = "0.7.7";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "maik.riechert@arcor.de";
        author = "Tom Schrijvers, Pieter Wuille";
        homepage = "https://people.cs.kuleuven.be/~tom.schrijvers/MCP/";
        url = "";
        synopsis = "Constraint Programming";
        description = "Monadic Constraint Programming framework";
        buildType = "Simple";
      };
      components = {
        "monadiccp" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.random
            hsPkgs.pretty
            hsPkgs.parsec
            hsPkgs.semigroups
          ];
        };
        tests = {
          "olympic" = {
            depends  = [
              hsPkgs.base
              hsPkgs.monadiccp
            ];
          };
        };
      };
    }