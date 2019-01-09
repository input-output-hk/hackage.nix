{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hmatrix"; version = "0.16.0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alberto Ruiz";
      author = "Alberto Ruiz";
      homepage = "https://github.com/albertoruiz/hmatrix";
      url = "";
      synopsis = "Numeric Linear Algebra";
      description = "Linear algebra based on BLAS and LAPACK.\n\nThe package is organized as follows:\n\n[\"Numeric.LinearAlgebra.HMatrix\"] Starting point and recommended import module for most applications.\n\n[\"Numeric.LinearAlgebra.Static\"] Experimental alternative interface.\n\n[\"Numeric.LinearAlgebra.Devel\"] Tools for extending the library.\n\n(Other modules are exposed with hidden documentation for backwards compatibility.)\n\nCode examples: <http://dis.um.es/~alberto/hmatrix/hmatrix.html>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.array)
          (hsPkgs.deepseq)
          (hsPkgs.random)
          (hsPkgs.split)
          (hsPkgs.bytestring)
          (hsPkgs.storable-complex)
          (hsPkgs.vector)
          ];
        libs = ([
          (pkgs."blas")
          (pkgs."lapack")
          ] ++ (pkgs.lib).optionals (system.isFreebsd) [
          (pkgs."blas")
          (pkgs."lapack")
          ]) ++ (pkgs.lib).optionals (system.isWindows) [
          (pkgs."blas")
          (pkgs."lapack")
          ];
        frameworks = (pkgs.lib).optional (system.isOsx) (pkgs."Accelerate");
        };
      };
    }