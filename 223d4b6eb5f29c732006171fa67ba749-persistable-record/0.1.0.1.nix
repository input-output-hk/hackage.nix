{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "persistable-record";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2013 Kei Hibino";
        maintainer = "ex8k.hibino@gmail.com";
        author = "Kei Hibino";
        homepage = "http://khibino.github.io/haskell-relational-record/";
        url = "";
        synopsis = "Binding between SQL database values and haskell records.";
        description = "This package contiains types to represent table constraints and\ninterfaces to bind between SQL database values and Haskell records.";
        buildType = "Simple";
      };
      components = {
        persistable-record = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.dlist
            hsPkgs.names-th
          ];
        };
      };
    }