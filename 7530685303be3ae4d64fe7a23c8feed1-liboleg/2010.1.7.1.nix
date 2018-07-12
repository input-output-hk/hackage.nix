{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "liboleg";
          version = "2010.1.7.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Don Stewart <dons@galois.com>";
        author = "Oleg Kiselyov";
        homepage = "http://okmij.org/ftp/";
        url = "";
        synopsis = "An evolving collection of Oleg Kiselyov's Haskell modules";
        description = "An evolving collection of Oleg Kiselyov's Haskell modules\n(released with his permission)\n\nSee the original articles at <http://okmij.org/ftp/>\n";
        buildType = "Simple";
      };
      components = {
        "liboleg" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.unix
            hsPkgs.template-haskell
            hsPkgs.CC-delcont
          ];
        };
      };
    }