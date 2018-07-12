{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      safe = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "void";
          version = "0.7.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2008-2015 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/void";
        url = "";
        synopsis = "A Haskell 98 logically uninhabited data type";
        description = "A Haskell 98 logically uninhabited data type, used to indicate that a given term should not exist.";
        buildType = "Simple";
      };
      components = {
        "void" = {
          depends  = [
            hsPkgs.base
          ] ++ pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "7.9")) ([
            hsPkgs.deepseq
            hsPkgs.hashable
            hsPkgs.semigroups
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.2") hsPkgs.ghc-prim);
        };
      };
    }