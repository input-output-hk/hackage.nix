{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "cmath";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008. Don Stewart <dons@galois.com>";
        maintainer = "Don Stewart <dons@galois.com>";
        author = "Don Stewart";
        homepage = "http://code.haskell.org/~dons/code/cmath";
        url = "";
        synopsis = "A small binding to the standard C math library";
        description = "A small binding to the standard C math library";
        buildType = "Simple";
      };
      components = {
        cmath = {
          depends  = [ hsPkgs.base ];
          libs = [ pkgs.m ];
        };
      };
    }