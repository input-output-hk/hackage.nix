{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "simple-actors";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "brandon.m.simmons@gmail.com";
        author = "Brandon Simmons";
        homepage = "";
        url = "";
        synopsis = "A simple implementation of the actor model of concurrency";
        description = "Simple concurrency primitives based on the Actor Model.";
        buildType = "Simple";
      };
      components = {
        "simple-actors" = {
          depends  = [
            hsPkgs.transformers
            hsPkgs.base
          ];
        };
      };
    }