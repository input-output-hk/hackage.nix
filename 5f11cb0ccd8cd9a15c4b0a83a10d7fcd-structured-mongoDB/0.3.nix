{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "structured-mongoDB";
          version = "0.3";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Amit Levy <alevy at stanford dot edu>, Deian Stefan  <deian at cs dot stanford dot edu>";
        author = "HAILS team";
        homepage = "";
        url = "";
        synopsis = "Structured MongoDB interface";
        description = "This module exports a structured type-safe interface to MongoDB.";
        buildType = "Simple";
      };
      components = {
        "structured-mongoDB" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers-base
            hsPkgs.monad-control
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.old-time
            hsPkgs.mongoDB
            hsPkgs.bson
            hsPkgs.compact-string-fix
            hsPkgs.template-haskell
          ];
        };
      };
    }