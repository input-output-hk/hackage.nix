{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "reducers";
          version = "3.10.3.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2008-2013 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/reducers/";
        url = "";
        synopsis = "Semigroups, specialized containers and a general map/reduce framework";
        description = "Semigroups, specialized containers and a general map/reduce framework";
        buildType = "Simple";
      };
      components = {
        reducers = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.transformers
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.fingertree
            hsPkgs.hashable
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.semigroups
            hsPkgs.semigroupoids
          ];
        };
      };
    }