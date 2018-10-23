{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "numeric-quest";
        version = "0.1.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <numeric-quest@henning-thielemann.de>";
      author = "Jan Skibinski";
      homepage = "http://www.haskell.org/haskellwiki/Numeric_Quest";
      url = "http://darcs.haskell.org/numeric-quest/";
      synopsis = "Math and quantum mechanics";
      description = "List based linear algebra, similtaneous linear equations, eigenvalues and eigenvectors, roots of polynomials, transcendent functions with arbitrary precision implemented by continued fractions, quantum operations, tensors";
      buildType = "Simple";
    };
    components = {
      "numeric-quest" = {
        depends  = if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.array)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.haskell98)
          ];
      };
    };
  }