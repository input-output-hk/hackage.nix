{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      pedantic = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tagged-exception-core";
          version = "2.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2009-2016, Peter Trško";
        maintainer = "peter.trsko@gmail.com";
        author = "Peter Trško";
        homepage = "https://github.com/trskop/tagged-exception-core";
        url = "";
        synopsis = "Reflect exceptions using phantom types.";
        description = "This library provides interface similar to /extensible-exceptions/.  It\nintroduces @Throws@ monad transformer that uses phantom type to tag code that\nmay raise exception.  Intention is to make exceptions explicit and to enforce\nexception handling.";
        buildType = "Simple";
      };
      components = {
        tagged-exception-core = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.exceptions
            hsPkgs.mmorph
            hsPkgs.mtl
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim;
        };
      };
    }