{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8.0.2";
        identifier = {
          name = "nth-prime";
          version = "1.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Joe Leslie-Hurd <joe@gilith.com>";
        author = "Joe Leslie-Hurd <joe@gilith.com>";
        homepage = "";
        url = "";
        synopsis = "Computing the nth prime";
        description = "This package implements a simple utility to compute the nth prime.";
        buildType = "Simple";
      };
      components = {
        exes = {
          nth-prime = {
            depends  = [
              hsPkgs.base
              hsPkgs.opentheory-primitive
              hsPkgs.opentheory-prime
            ];
          };
        };
        tests = {
          nth-prime-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.opentheory-primitive
              hsPkgs.opentheory-prime
            ];
          };
        };
      };
    }