{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "contravariant";
          version = "0.5.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2007-2013 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/contravariant/";
        url = "";
        synopsis = "Contravariant functors";
        description = "Contravariant functors";
        buildType = "Simple";
      };
      components = {
        contravariant = {
          depends  = [
            hsPkgs.base
            hsPkgs.tagged
            hsPkgs.transformers
            hsPkgs.transformers-compat
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim;
        };
      };
    }