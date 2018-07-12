{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "trace";
          version = "0.1.0.3";
        };
        license = "MIT";
        copyright = "Copyright (c) 2014 AlephCloud, Inc";
        maintainer = "jon@jonmsterling.com";
        author = "Jon Sterling";
        homepage = "";
        url = "";
        synopsis = "A monad transformer for tracing provenience of errors";
        description = "";
        buildType = "Simple";
      };
      components = {
        "trace" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.either
            hsPkgs.kan-extensions
            hsPkgs.monad-control
            hsPkgs.mtl
            hsPkgs.profunctors
            hsPkgs.transformers
            hsPkgs.transformers-base
          ];
        };
      };
    }