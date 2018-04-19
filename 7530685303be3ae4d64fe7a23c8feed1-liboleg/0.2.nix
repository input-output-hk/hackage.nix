{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "liboleg";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Don Stewart <dons@galois.com>";
        author = "Oleg Kiselyov";
        homepage = "http://okmij.org/ftp/";
        url = "";
        synopsis = "A collection of Oleg Kiselyov's Haskell modules (2009-2008)";
        description = "A collection of Oleg Kiselyov's Haskell modules (2009-2008) (released with his permission)";
        buildType = "Simple";
      };
      components = {
        liboleg = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.unix
            hsPkgs.template-haskell
          ];
        };
      };
    }