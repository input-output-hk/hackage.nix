{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "numeric-quest";
          version = "0.2.0.2";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Henning Thielemann <numeric-quest@henning-thielemann.de>";
        author = "Jan Skibinski";
        homepage = "http://www.haskell.org/haskellwiki/Numeric_Quest";
        url = "";
        synopsis = "Math and quantum mechanics";
        description = "List based linear algebra, similtaneous linear equations, eigenvalues and eigenvectors, roots of polynomials, transcendent functions with arbitrary precision implemented by continued fractions, quantum operations, tensors";
        buildType = "Simple";
      };
      components = {
        numeric-quest = {
          depends  = [
            hsPkgs.prelude-compat
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.array
              hsPkgs.base
            ]
            else [ hsPkgs.base ]);
        };
      };
    }