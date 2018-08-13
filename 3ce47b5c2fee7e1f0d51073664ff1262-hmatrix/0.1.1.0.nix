{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      splitbase = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "hmatrix";
        version = "0.1.1.0";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Alberto Ruiz <aruiz@um.es>";
      author = "Alberto Ruiz";
      homepage = "http://alberrto.googlepages.com/gslhaskell";
      url = "";
      synopsis = "Linear algebra and numerical computations";
      description = "A purely functional interface to basic linear algebra computations\nand other numerical routines, internally implemented using\nGSL, BLAS and LAPACK.\n\nMore information: <http://alberrto.googlepages.com/gslhaskell>";
      buildType = "Custom";
    };
    components = {
      "hmatrix" = {
        depends  = [
          (hsPkgs.haskell98)
        ] ++ (if _flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.array)
          ]
          else [ (hsPkgs.base) ]);
        libs = [
          (pkgs."gsl")
          (pkgs."blas")
          (pkgs."lapack")
        ];
      };
    };
  }