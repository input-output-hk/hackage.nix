{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      lib-werror = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "distributive";
          version = "0.4.4";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011-2014 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/distributive/";
        url = "";
        synopsis = "Distributive functors -- Dual to Traversable";
        description = "Distributive functors -- Dual to Traversable";
        buildType = "Custom";
      };
      components = {
        "distributive" = {
          depends  = [
            hsPkgs.base
            hsPkgs.tagged
            hsPkgs.transformers
            hsPkgs.transformers-compat
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.2") hsPkgs.ghc-prim;
        };
        tests = {
          "doctests" = {
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