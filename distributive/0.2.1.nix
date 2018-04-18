{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "distributive";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/distributive/";
        url = "";
        synopsis = "Haskell 98 Distributive functors -- Dual to Traversable";
        description = "Haskell 98 Distributive functors -- Dual to Traversable";
        buildType = "Simple";
      };
      components = {
        distributive = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
          ];
        };
      };
    }