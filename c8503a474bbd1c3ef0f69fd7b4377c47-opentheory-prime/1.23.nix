{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8.0.6";
        identifier = {
          name = "opentheory-prime";
          version = "1.23";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Joe Leslie-Hurd <joe@gilith.com>";
        author = "Joe Leslie-Hurd <joe@gilith.com>";
        homepage = "";
        url = "";
        synopsis = "Prime numbers";
        description = "Prime numbers - automatically generated from the opentheory package\nhaskell-prime-1.23";
        buildType = "Simple";
      };
      components = {
        opentheory-prime = {
          depends  = [
            hsPkgs.base
            hsPkgs.random
            hsPkgs.QuickCheck
            hsPkgs.opentheory-primitive
            hsPkgs.opentheory
          ];
        };
        exes = {
          opentheory-prime-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.random
              hsPkgs.QuickCheck
              hsPkgs.opentheory-primitive
              hsPkgs.opentheory
            ];
          };
        };
      };
    }