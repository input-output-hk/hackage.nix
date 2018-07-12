{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "constructive-algebra";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mortberg@student.chalmers.se";
        author = "Anders Mortberg, Bassel Mannaa";
        homepage = "";
        url = "";
        synopsis = "A library of constructive algebra.";
        description = "A library of algebra focusing mainly on commutative ring theory from a\nconstructive point of view.\n\nClassical structures are implemented without Noetherian assumptions.\nThis means that it is not assumed that all ideals are finitely\ngenerated. For example, instead of principal ideal domains one get\nBezout domains which are integral domains in which all finitely\ngenerated ideals are principal (and not necessarily that all ideals are\nprincipal).";
        buildType = "Simple";
      };
      components = {
        "constructive-algebra" = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
          ];
        };
      };
    }