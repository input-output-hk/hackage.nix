{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "ddc-core-eval";
          version = "0.2.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "benl@ouroborus.net";
        author = "Ben Lippmeier";
        homepage = "http://disciple.ouroborus.net";
        url = "";
        synopsis = "Disciple Core language semantic evaluator.";
        description = "This is a direct implementation of the operational semantics and is by no\nmeans fast, or a substitute for a real interpreter. Programs run with this\nevaluator will have an asymptotic complexity much worse than if they were\ncompiled. This evaluator is intended for experimenting with the language\nsemantics, and not running actual programs.";
        buildType = "Simple";
      };
      components = {
        ddc-core-eval = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.ddc-base
            hsPkgs.ddc-core
          ];
        };
      };
    }