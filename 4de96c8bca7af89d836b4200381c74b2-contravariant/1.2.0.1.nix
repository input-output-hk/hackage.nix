{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      tagged = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "contravariant";
          version = "1.2.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2007-2014 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/contravariant/";
        url = "";
        synopsis = "Contravariant functors";
        description = "Contravariant functors";
        buildType = "Simple";
      };
      components = {
        "contravariant" = {
          depends  = ([
            hsPkgs.base
            hsPkgs.base
            hsPkgs.semigroups
            hsPkgs.transformers
            hsPkgs.transformers-compat
            hsPkgs.void
          ] ++ pkgs.lib.optional (_flags.tagged && !(compiler.isGhc && compiler.version.ge "7.7")) hsPkgs.tagged) ++ pkgs.lib.optional (compiler.isGhc && (compiler.version.ge "7.4" && compiler.version.lt "7.6")) hsPkgs.ghc-prim;
        };
      };
    }