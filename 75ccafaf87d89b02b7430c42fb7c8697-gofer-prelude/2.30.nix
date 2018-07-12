{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "gofer-prelude";
          version = "2.30";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Don Stewart <dons@galois.com>";
        author = "Mark P Jones";
        homepage = "http://code.haskell.org/~dons/code/gofer-prelude";
        url = "";
        synopsis = "The Gofer 2.30 standard prelude";
        description = "Functional programming environment, Version 2.30\nStandard prelude for use of overloaded values using type classes.\nBased on the Haskell standard prelude version 1.2.\n\n<http://web.cecs.pdx.edu/~mpj/goferarc/>\n";
        buildType = "Simple";
      };
      components = {
        "gofer-prelude" = {
          depends  = [
            hsPkgs.base
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.9") hsPkgs.ghc-prim;
        };
      };
    }