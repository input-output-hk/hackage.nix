{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      onlygsl = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10.1.0";
      identifier = {
        name = "hmatrix-gsl-stats";
        version = "0.4.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) A.V.H. McPhail 2010, 2011, 2013, 2015";
      maintainer = "haskell.vivian.mcphail <at> gmail <dot> com";
      author = "Vivian McPhail";
      homepage = "http://code.haskell.org/hmatrix-gsl-stats";
      url = "";
      synopsis = "GSL Statistics interface";
      description = "Purely functional interface for statistics based on hmatrix and GSL\n\nRelieves the burden of alloc/free routines and is otherwise essentially 1:1\n\nDocumentation can be found at <http://www.gnu.org/software/gsl/manual/>\n\nThe vector type is Data.Vector.Storable from the 'vector' package.";
      buildType = "Simple";
    };
    components = {
      "hmatrix-gsl-stats" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.storable-complex)
          (hsPkgs.hmatrix)
        ];
        libs = ((pkgs.lib.optional (system.isOsx) (pkgs."gsl") ++ pkgs.lib.optional (system.isFreebsd) (pkgs."gsl")) ++ pkgs.lib.optional (system.isWindows) (pkgs."gsl-0")) ++ pkgs.lib.optional (_flags.onlygsl) (pkgs."gsl");
        frameworks = pkgs.lib.optional (system.isOsx) (pkgs."Accelerate");
        pkgconfig = pkgs.lib.optional (!_flags.onlygsl) (pkgconfPkgs.gsl);
      };
    };
  }