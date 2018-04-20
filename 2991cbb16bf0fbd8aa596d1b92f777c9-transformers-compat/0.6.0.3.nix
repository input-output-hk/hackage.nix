{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      two = false;
      three = true;
      four = false;
      five = false;
      mtl = true;
      generic-deriving = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "transformers-compat";
          version = "0.6.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2012-2015 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/transformers-compat/";
        url = "";
        synopsis = "A small compatibility shim for the transformers library";
        description = "This package includes backported versions of types that were added\nto transformers in transformers 0.3, 0.4, and 0.5 for users who need strict\ntransformers 0.2 or 0.3 compatibility to run on old versions of the\nplatform, but also need those types.\n\nThose users should be able to just depend on @transformers >= 0.2@\nand @transformers-compat >= 0.3@.\n\nNote: missing methods are not supplied, but this at least permits the types to be used.";
        buildType = "Simple";
      };
      components = {
        transformers-compat = {
          depends  = (([
            hsPkgs.base
          ] ++ (if _flags.five
            then [ hsPkgs.transformers ]
            else if _flags.four
              then [ hsPkgs.transformers ]
              else if _flags.three
                then [
                  hsPkgs.transformers
                ] ++ pkgs.lib.optional _flags.mtl hsPkgs.mtl
                else if _flags.two
                  then [
                    hsPkgs.transformers
                  ] ++ pkgs.lib.optional _flags.mtl hsPkgs.mtl
                  else [
                    hsPkgs.transformers
                  ])) ++ pkgs.lib.optional (compiler.isGhc || _flags.generic-deriving) hsPkgs.ghc-prim) ++ pkgs.lib.optional (_flags.generic-deriving && (compiler.isGhc && _flags.generic-deriving)) hsPkgs.generic-deriving;
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.deriving-compat
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.tagged
              hsPkgs.transformers
              hsPkgs.transformers-compat
            ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.generic-deriving;
          };
        };
      };
    }