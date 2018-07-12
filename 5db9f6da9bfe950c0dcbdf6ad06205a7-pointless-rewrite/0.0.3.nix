{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "pointless-rewrite";
          version = "0.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Hugo Pacheco <hpacheco@di.uminho.pt>";
        author = "Alcino Cunha <alcino@di.uminho.pt>, Hugo Pacheco <hpacheco@di.uminho.pt>";
        homepage = "";
        url = "";
        synopsis = "Pointless Rewrite library";
        description = "Library that implements a rewrite system for point-free expressions. Application scenarios include normal functional programs, strategic combinators (<http://dx.doi.org/10.1016/j.scico.2010.01.003>) and bidirectional lenses (<http://www.di.uminho.pt/~hpacheco/publications/lensopt.pdf>), all encoded with point-free combinators.";
        buildType = "Simple";
      };
      components = {
        "pointless-rewrite" = {
          depends  = [
            hsPkgs.mtl
            hsPkgs.base
            hsPkgs.pointless-haskell
            hsPkgs.pointless-lenses
            hsPkgs.process
            hsPkgs.containers
          ];
        };
      };
    }