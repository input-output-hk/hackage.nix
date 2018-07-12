{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Useful";
          version = "0.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "contact@theorangeduck.com";
        author = "Daniel Holden";
        homepage = "";
        url = "";
        synopsis = "Some useful functions and shorthands.";
        description = "A library of some useful functions and some other short-hand or alias functions which I commonly use to make coding quicker and easier. This also includes a lightweight implementation of a dictionary using Data.Map.";
        buildType = "Simple";
      };
      components = {
        "Useful" = {
          depends  = [
            hsPkgs.base
            hsPkgs.random
            hsPkgs.containers
          ];
        };
      };
    }