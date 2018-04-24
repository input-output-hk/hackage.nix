{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      tagged = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "distributive";
          version = "0.5.0.1";
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
            hsPkgs.ghc-prim
          ] ++ pkgs.lib.optional _flags.tagged hsPkgs.tagged) ++ pkgs.lib.optional (compiler.isGhc && (compiler.version.ge "7.4" && compiler.version.lt "7.6")) hsPkgs.ghc-prim;
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