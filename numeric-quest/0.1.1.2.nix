{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "numeric-quest";
          version = "0.1.1.2";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Henning Thielemann <numeric-quest@henning-thielemann.de>";
        author = "Jan Skibinski";
        homepage = "http://www.haskell.org/haskellwiki/Numeric_Quest";
        url = "http://code.haskell.org/~thielema/numeric-quest/";
        synopsis = "Math and quantum mechanics";
        description = "List based linear algebra, similtaneous linear equations, eigenvalues and eigenvectors, roots of polynomials, transcendent functions with arbitrary precision implemented by continued fractions, quantum operations, tensors";
        buildType = "Simple";
      };
      components = {
        numeric-quest = {
          depends  = if _flags.splitbase
            then [
              hsPkgs.array
              hsPkgs.base
            ]
            else [ hsPkgs.base ];
        };
      };
    }