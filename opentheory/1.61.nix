{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8.0.6";
        identifier = {
          name = "opentheory";
          version = "1.61";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Joe Hurd <joe@gilith.com>";
        author = "Joe Hurd <joe@gilith.com>";
        homepage = "";
        url = "";
        synopsis = "The Haskell base";
        description = "The Haskell base\nAutomatically generated from the opentheory package haskell-1.61";
        buildType = "Simple";
      };
      components = {
        opentheory = {
          depends  = [
            hsPkgs.base
            hsPkgs.random
            hsPkgs.QuickCheck
            hsPkgs.opentheory-primitive
          ];
        };
        exes = {
          opentheory-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.random
              hsPkgs.QuickCheck
              hsPkgs.opentheory-primitive
            ];
          };
        };
      };
    }