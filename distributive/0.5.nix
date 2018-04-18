{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      tagged = true;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "distributive";
          version = "0.5";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011-2016 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/distributive/";
        url = "";
        synopsis = "Distributive functors -- Dual to Traversable";
        description = "Distributive functors -- Dual to Traversable";
        buildType = "Custom";
      };
      components = {
        distributive = {
          depends  = ([
            hsPkgs.base
            hsPkgs.base-orphans
            hsPkgs.transformers
            hsPkgs.transformers-compat
          ] ++ pkgs.lib.optional _flags.tagged hsPkgs.tagged) ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim;
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.doctest
              hsPkgs.filepath
            ];
          };
        };
      };
    }