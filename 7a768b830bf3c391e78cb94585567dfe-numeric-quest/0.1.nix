{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "numeric-quest";
          version = "0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Henning Thielemann <numeric-quest@henning-thielemann.de>";
        author = "Jan Skibinski";
        homepage = "http://www.haskell.org/haskellwiki/Numeric_Quest";
        url = "http://darcs.haskell.org/numeric-quest/";
        synopsis = "Math and quantum mechanics";
        description = "List based linear algebra, similtaneous linear equations, eigenvalues and eigenvectors, roots of polynomials, transcendent functions with arbitrary precision implemented by continued fractions, quantum operations, tensors";
        buildType = "Custom";
      };
      components = {
        numeric-quest = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
          ];
        };
      };
    }