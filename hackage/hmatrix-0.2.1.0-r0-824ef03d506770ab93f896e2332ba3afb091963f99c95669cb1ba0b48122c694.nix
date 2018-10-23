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
        name = "hmatrix";
        version = "0.2.1.0";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Alberto Ruiz <aruiz@um.es>";
      author = "Alberto Ruiz";
      homepage = "http://alberrto.googlepages.com/gslhaskell";
      url = "";
      synopsis = "Linear algebra and numerical computations";
      description = "A purely functional interface to basic linear algebra computations\nand other numerical routines, internally implemented using\nGSL, BLAS and LAPACK.\n\nMore information: <http://alberrto.googlepages.com/gslhaskell>";
      buildType = "Simple";
    };
    components = {
      "hmatrix" = {
        depends  = [
          (hsPkgs.haskell98)
        ] ++ (if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.storable-complex)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.storable-complex)
          ]);
        libs = [
          (pkgs."gsl")
          (pkgs."blas")
          (pkgs."lapack")
        ];
      };
    };
  }