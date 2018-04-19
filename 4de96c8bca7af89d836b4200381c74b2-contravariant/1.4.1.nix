{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      tagged = true;
      semigroups = true;
      safe = false;
      statevar = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "contravariant";
          version = "1.4.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2007-2015 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/contravariant/";
        url = "";
        synopsis = "Contravariant functors";
        description = "Contravariant functors.";
        buildType = "Simple";
      };
      components = {
        contravariant = {
          depends  = (((([
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.transformers-compat
          ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.void) ++ pkgs.lib.optional (_flags.tagged && !compiler.isGhc) hsPkgs.tagged) ++ pkgs.lib.optional (_flags.semigroups && !compiler.isGhc) hsPkgs.semigroups) ++ pkgs.lib.optional _flags.statevar hsPkgs.StateVar) ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim;
        };
      };
    }